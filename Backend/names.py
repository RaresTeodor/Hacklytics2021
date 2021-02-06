
import pandas as pd
data=pd.read_csv(r"C:\Users\gabri\ProjectsCode\Hacklytics2021\Backend\ufc-master.csv")

name=pd.DataFrame(data['R_fighter']).join(data.B_fighter)
name=name.unique()
print(name)