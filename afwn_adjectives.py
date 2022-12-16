import pgf
import re

GRAMMAR_NAME = 'ZWNAdjectives'

agr_map = {
    ('1', 'ZWN_he_Pron'),
    ('1a', 'ZWN_he_Pron'),
    ('2', 'ZWN_they_Pron'),
    ('2a', 'ZWN_they_Pron'),
    ('3', 'ZWN_it3_Pron'),
    ('4', 'ZWN_they4_Pron'),
    ('5', 'ZWN_it5_Pron'),
    ('6', 'ZWN_they6_Pron'),
    ('7', 'ZWN_it7_Pron'),
    ('8', 'ZWN_they8_Pron'),
    ('9', 'ZWN_it9_Pron'),
    ('10', 'ZWN_they10_Pron'),
    ('11', 'ZWN_it11_Pron'),
    ('14', 'ZWN_it14_Pron'),
    ('15', 'ZWN_it15_Pron'),
    ('17', 'ZWN_it17_Pron')
}

temp_map = {
    ('Fut','ZWN_TFutTemp'),
    ('Past','ZWN_TPastTemp'),
    ('Pres','ZWN_TPresTemp'),
    ('RemFut','ZWN_TRemFutTemp'),
    ('RemPast','ZWN_TRemPastTemp')
}

pol_map = {
    ('Pos','ZWN_PPos'),
    ('Neg','ZWN_PNeg')
}

def lookup(key,map,reverse=False):
    try:
        if reverse:
            v = [v for (v,k) in map if key == k][0]
        else:
            v = [v for (k,v) in map if key == k][0]
        return v
    except IndexError:
        return key

def print_csv(data):
    print('Tense,Polarity,Class,Form,Long/short,Adjective')
    for d in data:
        if len(''.join(d)) > 0: # don't print empty lines
            print(','.join(d))

def print_console_row(t,p,c,f,l,a,column_width):
    t = lookup(t,temp_map,True) #temp_reverse_lookup[t]
    p = lookup(p,pol_map,True) #pol_reverse_lookup[p]
    sep1 = ' '*(column_width-len(t))
    sep2 = ' '*(column_width-len(p))
    sep3 = ' '*(column_width-len(c))
    sep4 = ' '*(column_width-len(f))
    sep5 = ' '*(column_width-len(l))
    print(f'{t}{sep1}{p}{sep2}{c}{sep3}{f}{sep4}{l}{sep5}{a}')

def print_console(data,heading=True,final_column='Qualificative'):
    column_width = 11
    if heading:
        print_console_row('Tense','Polarity','Class','Form','Long/short',final_column,column_width)
        print('-'*(6*column_width))

    for (t,p,c,f,l,a) in data:
        print_console_row(t,p,c,f,l,a,column_width)

def get_adj_funs(grammar,adj):
    adj_vps = grammar.functionsByCat('ZWN_APred')
    p_str = f'{adj}_[0-9]+_A'
    p = re.compile(p_str)
    return [f for f in adj_vps if re.fullmatch(p,f)]

def construct_single_query(concrete,temp,pol,nclass,agr,form,adj_str,adj_vp):
    if form == 'Pred':
        long_a = concrete.linearize(pgf.readExpr(f'PredicVP {temp} {pol} {agr} {adj_vp}'))
        short_a = concrete.linearize(pgf.readExpr(f'PredicVPShort {temp} {pol} {agr} {adj_vp}'))
    else:
        long_a = concrete.linearize(pgf.readExpr(f'AttribVP {temp} {pol} {agr} {adj_vp}'))
        short_a = concrete.linearize(pgf.readExpr(f'AttribVPShort {temp} {pol} {agr} {adj_vp}'))

    if long_a == short_a or '*' in short_a:
        d = (temp,pol,nclass,form,'',long_a)
        return [d]
    else:
        long_d = (temp,pol,nclass,form,'long',long_a)
        short_d = (temp,pol,nclass,form,'short',short_a)
        return [long_d,short_d]

def long_short_equiv(dp1,dp2):
    dp1_ = tuple([dp1[i] for i in range(len(dp1)) if not i == 4])
    dp2_ = tuple([dp2[i] for i in range(len(dp2)) if not i == 4])

    if dp1_ == dp2_:
        return True
    return False

def generate(grammar,concrete,args):
    if args.csv:
        print_func = print_csv
    else:
        print_func = print_console

    # TEMP
    if args.temp == '?':
        temps = [f for f in grammar.functionsByCat('ZWN_Temp')]
    else:
        temps = [f'ZWN_T{args.temp}Temp']

    # POL
    if args.pol == '?':
        pols = [f for f in grammar.functionsByCat('ZWN_Pol')]
    else:
        pols = [f'ZWN_P{args.pol}']

    # CLASS
    if args.noun_class == '?':
        nclasses = [k for (k,v) in agr_map]
    else:
        nclasses = [args.noun_class]

    # FORM
    if args.form == '?':
        forms = ['Attr','Pred']
    else:
        forms = [args.form]

    # ADJECTIVE
    adj_str = args.adjective
    adj_str = adj_str.replace(' ','_')
    adj_vps = get_adj_funs(grammar,adj_str)

    data = []
    if len(adj_vps) > 0:
        for adj_vp in adj_vps:
            for temp in temps:
                for pol in pols:
                    for c in nclasses:
                        agr = lookup(c,agr_map)
                        for form in forms:
                            data += construct_single_query(concrete,temp,pol,c,agr,form,adj_str,adj_vp)
            data += [('','','','','','')]
        print_func(data)
    else:
        import sys
        print('ERROR: no such adjective found',file=sys.stderr)
        sys.exit(1)

def analyze(grammar,concrete,args):
    try:
        i = concrete.parse(args.qualificative)
    except pgf.ParseError:
        import sys
        print('ERROR: no such Zulu qualificative found',file=sys.stderr)
        sys.exit(1)
    exprs = []
    while True:
        try:
            p,e = next(i)
            exprs.append(e)
        except StopIteration:
            break

    if len(exprs) == 0:
        import sys
        print('ERROR: no such Zulu qualificative found',file=sys.stderr)
        sys.exit(1)
    column_width = 11

    data = []
    for e in exprs:
        (root_str,children) = e.unpack()
        child = children[0]

        (child_str,grandchildren) = child.unpack()

        # TEMP
        temp_fun,temp_c = grandchildren[0].unpack()
        t = lookup(temp_fun,temp_map,True)

        # POL
        pol_fun,pol_c = grandchildren[1].unpack()
        p = lookup(pol_fun,pol_map,True)

        # CLASS
        pron_fun,pron_c = grandchildren[2].unpack()
        c = lookup(pron_fun,agr_map,True)

        # FORM
        f = 'Pred' if 'Predic' in child_str else 'Attr'

        # LONG/SHORT
        l = 'short' if 'Short' in child_str else 'long'

        # ADJECTIVE
        adj_f,adj_c = grandchildren[3].unpack()
        # deal with underscores and spaces
        f_pieces = adj_f.split('_')
        f_name = '_'.join(f_pieces[0:-2])
        a = f_name.replace('_',' ')

        d_ = (t,p,c,f,l,a)
        copy = False
        for i in range(len(data)):
            if long_short_equiv(d_,data[i]):
                data[i] = (t,p,c,f,'',a)
                copy = True
        if not copy:
            data.append(d_)
    data = sorted(list(set(data)))
    print_console(data,final_column='Adjective')

def query(grammar,concrete,args):
    adj = args.adjective
    adj = adj.replace(' ','_')
    all_adj_vps = grammar.functionsByCat('ZWN_APred')
    adj_vps = [f for f in all_adj_vps if adj in f]
    adj_strs = []
    for f in adj_vps:
        # deal with underscores and spaces
        f_pieces = f.split('_')
        f_name = '_'.join(f_pieces[0:-2])
        a = f_name.replace('_',' ')
        adj_strs.append(a)
    print('\n'.join(sorted(list(set(adj_strs)))))

if __name__ == '__main__':

    ABSTRACT = pgf.readPGF(f'{GRAMMAR_NAME}.pgf')
    CONCRETE = ABSTRACT.languages[f'{GRAMMAR_NAME}Zul']

    import argparse
    parser = argparse.ArgumentParser()
    subparsers = parser.add_subparsers(help='sub-command help')

    query_parser = subparsers.add_parser('query',help='check support for an English adjective')
    query_parser.add_argument('adjective',help='adjective or part of an adjective (English)')
    query_parser.set_defaults(func=query)

    generate_parser = subparsers.add_parser('generate',help='get correct Zulu qualificative constructions (enclose multiword adjectives in quotes, use ? as wild card)')

    generate_parser.add_argument('temp',choices=['Pres','Past','Fut','RemPast','RemFut','?'])
    generate_parser.add_argument('pol',choices=['Pos','Neg','?'])
    generate_parser.add_argument('noun_class',choices=['1','1a','2','2a','3','4','5','6','7','8','9','10','11','14','15','17','?'])
    generate_parser.add_argument('form',choices=['Attr','Pred','?'])
    generate_parser.add_argument('adjective',default=None, help='multi-token constructions should be enclosed in quotations')
    generate_parser.add_argument('--csv',dest='csv',action='store_true',help='print output in csv format')
    generate_parser.set_defaults(func=generate)

    analyze_parser = subparsers.add_parser('analyze',help='get analysis of a Zulu qualificative')

    analyze_parser.add_argument('qualificative',help='Zulu qualificative (multi-token constructions should be enclosed in quotations)')
    analyze_parser.set_defaults(func=analyze)

    args = parser.parse_args()
    args.func(ABSTRACT,CONCRETE,args)
