:- discontiguous 
    processor/1, socket/2, ram/2,
    price/2, motherboard/1,
    motherboard_with_ram/2, price/2, is_not_compatible_processor_motherboard/2,
    equals/2, check_budget/3, calculate_budget/2,
    are_greater/2, filter_list_by_price/3, take_max_element_by_price/3,
    min_by_price/2, are_greater_p/2, filter_for_processor/3, filterList_p/3,
    find_max_motherboard/4, minl_m/2, minl_p/2, find_min/5.

% Intel processors

processor('i9_14900k').
processor('i7_14700k').
processor('i5_14600k').

processor('i9_11900k').
processor('i7_11700k').
processor('i5_11600k').

socket('i9_14900k', 'lga_1700').
socket('i7_14700k', 'lga_1700').
socket('i5_14600k', 'lga_1700').

socket('i9_11900k', 'lga_1200').
socket('i7_11700k', 'lga_1200').
socket('i5_11600k', 'lga_1200').

ram('i9_14900k', 'ddr5').
ram('i7_14700k', 'ddr5').
ram('i5_14600k', 'ddr5').

ram('i9_14900k', 'ddr4').
ram('i7_14700k', 'ddr4').
ram('i5_14600k', 'ddr4').

ram('i9_11900k', 'ddr4').
ram('i7_11700k', 'ddr4').
ram('i5_11600k', 'ddr4').

price('i9_14900k', 67160).
price('i7_14700k', 46867).
price('i5_14600k', 36720).

price('i9_11900k', 35000).
price('i7_11700k', 36530).
price('i5_11600k', 26159).

% Motherboard for Intel

motherboard('asrock_z790_pro').
motherboard('gigabyte_b760m_ds3h').
motherboard('msi_pro_z690_p').
motherboard('msi_pro_h610M_e').

motherboard('asrock_h470m').
motherboard('gigabyte_h470m').
motherboard('msi_pro_h510_b').
motherboard('biostar_b560mh_e').

price('asrock_z790_pro', 24269).
price('gigabyte_b760m_ds3h', 16931).
price('msi_pro_z690_p', 20560).
price('msi_pro_h610M_e', 7175).

price('asrock_h470m', 5799).
price('gigabyte_h470m', 6199).
price('msi_pro_h510_b', 5999).
price('biostar_b560mh_e', 8299).

socket('asrock_z790_pro', 'lga_1700').
socket('gigabyte_b760m_ds3h', 'lga_1700').
socket('msi_pro_z690_p', 'lga_1700').
socket('msi_pro_h610M_e', 'lga_1700').

socket('asrock_h470m', 'lga_1200').
socket('gigabyte_h470m', 'lga_1200').
socket('msi_pro_h510_b', 'lga_1200').
socket('biostar_b560mh_e', 'lga_1200').

% Ryzen processors

processor('ryzen_9_7900x').
processor('ryzen_7_7800x').
processor('ryzen_5_7600x').

processor('ryzen_9_5900x').
processor('ryzen_7_5800x').
processor('ryzen_5_5600x').

socket('ryzen_9_7900x', 'am5').
socket('ryzen_7_7800x', 'am5').
socket('ryzen_5_7600x', 'am5').

socket('ryzen_9_5900x', 'am4').
socket('ryzen_7_5800x', 'am4').
socket('ryzen_5_5600x', 'am4').

ram('ryzen_9_7900x', 'ddr5').
ram('ryzen_7_7800x', 'ddr5').
ram('ryzen_5_7600x', 'ddr5').

ram('ryzen_9_7900x', 'ddr4').
ram('ryzen_7_7800x', 'ddr4').
ram('ryzen_5_7600x', 'ddr4').

ram('ryzen_9_5900x', 'ddr4').
ram('ryzen_7_5800x', 'ddr4').
ram('ryzen_5_5600x', 'ddr4').

price('ryzen_9_7900x', 57980).
price('ryzen_7_7800x', 43485).
price('ryzen_5_7600x', 27990).

price('ryzen_9_5900x', 31000).
price('ryzen_7_5800x', 24599).
price('ryzen_5_5600x', 18099).

% Motherboard for Ryzen

motherboard('asus_prime_b650_plus').
motherboard('msi_pro_b650m_a').

motherboard('asus_prime_b550_plus').
motherboard('msi_a520m').

motherboard_with_ram('asus_prime_b650_plus', 'ddr5').
motherboard_with_ram('msi_pro_b650m_a', 'ddr5').

price('asus_prime_b650_plus', 25114).
price('msi_pro_b650m_a', 18105).

price('asus_prime_b550_plus', 13190).
price('msi_a520m', 6390).

socket('asus_prime_b650_plus', 'am5').
socket('msi_pro_b650m_a', 'am5').

socket('asus_prime_b550_plus', 'am4').
socket('msi_a520m', 'am4').

ram('asus_prime_b650_plus', 'ddr5').
ram('msi_pro_b650m_a', 'ddr5').

ram('asus_prime_b550_plus', 'ddr4').
ram('msi_a520m', 'ddr4').

% Graphics Card

% Nvidia
card('rtx_4090').
card('rtx_4080').
card('rtx_4070').

% AMD
card('radeon_rx_7900').
card('radeon_rx_7800').
card('radeon_rx_7700').

price('rtx_4090', 227990).
price('rtx_4080', 149990).
price('rtx_4070', 98990).

price('radeon_rx_7900', 102999).
price('radeon_rx_7800', 71337).
price('radeon_rx_7700', 59990).

% Names of all elements

graphics_cards(['rtx_4090', 'rtx_4080', 'rtx_4070', 'radeon_rx_7900', 'radeon_rx_7800', 'radeon_rx_7700']).
processors(['i9_14900k', 'i7_14700k', 'i5_14600k', 'i9_11900k', 'i7_11700k', 'i5_11600k', 
            'ryzen_9_7900x', 'ryzen_7_7800x', 'ryzen_5_7600x', 'ryzen_9_5900x', 'ryzen_7_5800x', 'ryzen_5_5600x']).
motherboards(['asrock_z790_pro', 'gigabyte_b760m_ds3h', 'msi_pro_z690_p', 'msi_pro_h610M_e',
            'asus_prime_b650_plus', 'msi_pro_b650m_a', 'asrock_h470m', 'gigabyte_h470m', 'msi_pro_h510_b', 
            'biostar_b560mh_e', 'asus_prime_b550_plus', 'msi_a520m']).


% The main functions

is_not_compatible_processor_motherboard(Processor, Motherboard) :- 
            socket(Processor, Pr_sock), 
            socket(Motherboard, M_sock), 
            motherboard(Motherboard), 
            processor(Processor),
            not_equals(Pr_sock, M_sock).

compatible_processor_motherboard(Processor, Motherboard) :- 
            socket(Processor, Pr_sock), 
            socket(Motherboard, M_sock), 
            motherboard(Motherboard), 
            processor(Processor),
            equals(Pr_sock, M_sock).

get_processors_by_socket(Processor, Socket) :- socket(Processor, Socket), processor(Processor).

get_motherboard_by_socket(Motherboard, Socket) :- socket(Motherboard, Socket), motherboard(Motherboard).

get_processors_by_ram(Processor, Socket) :- ram(Processor, Socket), processor(Processor).

get_motherboard_by_ram(Motherboard, Socket) :- ram(Motherboard, Socket), motherboard(Motherboard).

get_processors_for_motherboard(Motherboard, Processor) :- socket(Motherboard, Socket), socket(Processor, Socket), motherboard(Motherboard), processor(Processor).

get_motherboard_for_processor(Processor, Motherboard) :- get_processors_for_motherboard(Motherboard, Processor), processor(Processor), motherboard(Motherboard).

find_best_motherboard_by_budget(Budget) :- motherboards(Motherboards), filter_list_by_price(Budget, Motherboards, Out), max_by_price(Out, Motherboard), write(Motherboard).

find_best_processor_by_budget(Budget) :- processors(Processors), filter_list_by_price(Budget, Processors, Out), max_by_price(Out, Processor), write(Processor).

check_budget(Processor, Motherboard, Budget) :- (is_not_compatible_processor_motherboard(Processor, Motherboard) ->
            write('Процессор не совместим в материнской платой'), false;
            price(Processor, Pr_price),
            price(Motherboard, M_price), 
            Pre_Budget is Pr_price + M_price, 
            (Pre_Budget =< Budget) -> write('Бюджета достаточно'); write('Бюджета не достаточно'), false).

calculate_budget(Processor, Motherboard, Card) :- 
            price(Processor, Pr_price), 
            price(Motherboard, M_price),  
            price(Card, C_price),
            Budget is Pr_price + M_price + C_price, write(Budget).

create_pc_by_budget(Budget) :- 
            (Budget > 0 -> true; false),
            % Считаем, что видеокарта должна стоить не больше половины бюджета
            Split_pr is Budget // 2, 
            graphics_cards(Cards), 
            (take_max_element_by_price(Cards, Split_pr, Card) ->
                write('Card = '), writeln(Card),

                price(Card, Price_c), Balance is Budget - Price_c,
                find_processor_motherboard(Proc, Motherboard, Balance), 

                write('Processor = '), writeln(Proc), 
                write('Motherboard = '), writeln(Motherboard);
                
                % Если нельзя взять видеокарту ценой половины бюджета, то возьмем самую дешевую
                min_by_price(Cards, Card), write('Card = '), writeln(Card), 
                price(Card, Price_c), Balance is Budget - Price_c,
                find_processor_motherboard(Proc, Motherboard, Balance),
                write('Processor = '), writeln(Proc), 
                write('Motherboard = '), writeln(Motherboard)
            ).

create_pc_by_budget(Budget, Processor, Motherboard, Card) :- 
            (Budget > 0 -> true; false),
            Split_pr is Budget // 2, 
            graphics_cards(Cards), 
            (take_max_element_by_price(Cards, Split_pr, Card) ->  
                price(Card, Price_c), Balance is Budget - Price_c,
                find_processor_motherboard(Processor, Motherboard, Balance);
                % Если нельзя взять видеокарту ценой половины бюджета, то возьмем самую дешевую
                min_by_price(Cards, Card), price(Card, Price_c), Balance is Budget - Price_c,
                find_processor_motherboard(Processor, Motherboard, Balance)
            ).

find_processor_motherboard(Proc, Motherboard, Balance) :- processors(Procs), sort_by_price(Procs, SortProcs), find_max_processor_motherboard(SortProcs, Proc, Motherboard, Balance, 0).

% Берем самую дорогую материнскую плату совместимую с процессор и с ценою не больше заданной
find_max_processor_motherboard(Proc, Proc_Result, _, _, 1) :- Proc_Result = Proc.
find_max_processor_motherboard([X|T], Proc, Motherboard, Budget, 0) :- price(X, Price_p), Balance is Budget - Price_p, 
(
    Balance >= 0 ->
        motherboards(Motherboards), filter_for_processor(X, Motherboards, Out), sort_by_price(Out, SortMoth),
            (find_max_motherboard(SortMoth, Motherboard, Balance, 0) -> 
                price(Motherboard, Price_m), Q is Price_m + Price_p, (Q =< Budget -> Flag = 1, Tail = X; Flag = 0, Tail = T), find_max_processor_motherboard(Tail, Proc, Motherboard, Budget, Flag);
                find_max_processor_motherboard(T, Proc, Motherboard, Budget, 0)
            );    
        find_max_processor_motherboard(T, Proc, Motherboard, Budget, 0)
).

% Берем самую дорогую материнскую плату совместимую с процессор и с ценою не больше заданной
find_max_motherboard(M, Motherboard, _, 1) :- Motherboard = M.
find_max_motherboard([M|T], Motherboard, Budget, 0) :- price(M, Price_m), (Price_m > Budget -> Tail = T, Flag = 0; Tail = M, Flag = 1), find_max_motherboard(Tail, Motherboard, Budget, Flag).

find_max_processor(P, Processor, _, 1) :- Processor = P.
find_max_processor([P|T], Processor, Budget, 0) :- price(P, Price_p), (Price_p > Budget -> Tail = T, Flag = 0; Tail = P, Flag = 1), find_max_processor(Tail, Processor, Budget, Flag).

% Support functions

take_max_element_by_price(In, Price, Y) :- filter_list_by_price(Price, In, Out), max_by_price(Out, Y).

write_a_list([]).
write_a_list([H | T]) :-
        write(H),
        nl,
        write_a_list(T).

filter_for_processor(A, In, Out) :-
    exclude(is_not_compatible_processor_motherboard(A), In, Out).

filter_list_by_price(A, In, Out) :-
    exclude(are_greater(A), In, Out).

max_by_price([Only], Only).
max_by_price([Head|Tail], Maximum) :-
    max_by_price(Tail, TailMax),
    price(Head, F),
    price(TailMax, S),
    (F >= S -> Maximum = Head; Maximum = TailMax).

min_by_price([Only], Only).
min_by_price([Head|Tail], Minimum) :-
    min_by_price(Tail, TailMin),
    price(Head, F),
    price(TailMin, S),
    (F =< S -> Minimum = Head; Minimum = TailMin).

are_greater(X, Y) :- price(Y, W), X < W.
equals(X, Y) :- X == Y.
not_equals(X, Y) :- X \= Y.

sort_by_price([],[]).
sort_by_price([Head|Tail], ListSorted) :- sort_by_price(Tail, TailSorted), insrt(Head, TailSorted, ListSorted).
insrt(X, [Y | ListSorted], [Y | ListSorted1]) :- price(X, Pr_x), price(Y, Pr_y), Pr_x > Pr_y, !, insrt(X, ListSorted, ListSorted1).
insrt(X, ListSorted, [X | ListSorted]).
