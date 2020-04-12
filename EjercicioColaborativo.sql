-- EJERCICIO COLABORATIVO
set serveroutput on
-- PROGRAMA PRINCIPAL
accept numero prompt 'Introduzca Numero de Empleado: '
accept puesto prompt 'Introduzca Puesto del Empleado: '
DECLARE
    numEmple empleado.num_emp%type:='&numEmple';
    puestoEmple empleado.puesto%type:='&puesto';
    comppuesto boolean;
BEGIN
    comppuesto:=compruebaPuesto(numEmple,puestoEmple);
    if comppuesto=false then
        cambiapuesto(numEmple, puestoEmple);
    else 
        if comppuesto=null then
            dbms_output.put_line('El empleado '||initcap(numEmple)||' no existe');
        else
            dbms_output.put_line('El empleado '||initcap(numEmple)||' ya tiene ese puesto');
        end if;
    end if;
END;
/