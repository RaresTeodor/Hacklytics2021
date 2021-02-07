
import pandas as pd
data=pd.read_csv(r"C:\Users\gabri\ProjectsCode\Hacklytics2021\Backend\ufc-master.csv")
name = data.R_fighter.unique()
name=name.join(data.B_fighter)
name=name.unique()
print(name)