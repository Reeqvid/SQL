import random

import names
import psycopg2

conn = psycopg2.connect(
    database="qa_ddl_24_80",
    user="user_24_80",
    password="123",
    host="159.69.151.133",
    port="5056")

cursor = conn.cursor()

# for i in range(64):
#     if conn:
#         role_name = "'" + names.get_full_name() + "'"
#
#         insert_query ='insert into public.employees(employee_name)' \
#                       'values (' + str(role_name) + ')'
#         print("-------", insert_query)
#         cursor.execute(insert_query)
#         conn.commit()
# cursor.close()

# for i in range(10):
#     if conn:
#         name_rand = str(i + 71)
#         sal_id = str(random.randint(1, 20))
#         insert_query = 'insert into public.employee_salary(employee_id, salary_id)' \
#                        'values (' + name_rand + ', ' + sal_id + ')'
#         print("--------", name_rand, sal_id)
#         cursor.execute(insert_query)
#         conn.commit()
# cursor.close()

# for i in range(2, 40):
#     if conn:
#         gen_id = str(i + 1)
#         rol_id = str(random.randint(1, 20))
#         insert_query = 'insert into public.roles_employee(employees_id, role_id)' \
#                        'values (' + gen_id + ', ' + rol_id + ')'
#         print("------", gen_id)
#         cursor.execute(insert_query)
#         conn.commit()
# cursor.close()
