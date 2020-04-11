-- EJERCICIO COLABORATIVO
set serveroutput on

-- FUNCION


-- PROCEDIMIENTO


-- PROGRAMA PRINCIPAL
accept numero prompt 'Introduzca Numero de Empleado: '
accept puesto prompt 'Introduzca Puesto del Empleado: '
DECLARE
    numEmple empleado.num_emp%type:='&numEmple';
    puestoEmple empleado.puesto%type:='&puesto';
BEGIN
    if compruebaPuesto(numEmple)=false then
        -- Llamada al procedimiento para asignar el puesto
    else
        dbms_output.put_line('El empleado '||initcap(numEmple)||' ya tiene ese puesto');
    end if;
END;
/