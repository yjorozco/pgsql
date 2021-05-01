create or replace function CALCULAR_ISR(salario_mensual numeric)
returns numeric 
as 
$$
declare 
	top1 numeric := 416220.00;
	top2 numeric := 624329.00;
    top3 numeric := 867123.00;
    salario_anual numeric := salario_mensual * 12;
   	isr numeric;
begin
	case 
		when (salario_anual <= top1)then isr :=0;
		when (salario_anual > top1 and salario_anual < top2)then isr := (salario_anual - top1) * 0.15;
		when (salario_anual  > top2 and salario_anual < top3)then isr := 31216 + (salario_anual - top2) * 0.20;
		when (salario_anual  > top3)then isr := 79776.00 + (salario_anual - top2) * 0.25;	
	end case;
	return isr/12;
end
$$
language 'plpgsql';
	
select e.emp_no, e.first_name, e.last_name,sum(s.salary), CALCULAR_ISR(sum(s.salary))  from employees e inner join salaries s on s.emp_no = e.emp_no group by e.emp_no, e.first_name, e.last_name limit 10;