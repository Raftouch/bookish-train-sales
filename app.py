import plotly.express as px
import pandas as pd
import json
# import webbrowser


### DATA FROM JSON ###

with open('calculation_results/ventes_par_region.json') as file:
    data = json.load(file)

df = pd.DataFrame(data)
figureForRegion = px.pie(df, values="ventes_par_region", names="region", title="Ventes par région")
figureForRegion.write_html("sales-by-region.html")
figureForRegion.show()


# with open('calculation_results/ventes_par_produit.json') as file:
#     data = json.load(file)

# figureForProduct = px.pie(data, values='ventes_par_produit', names='produit', title='Ventes par produit')
# figureForProduct.write_html("sales-by-product.html")
# figureForProduct.show()


### DATA FROM CSV ###

data = pd.read_csv("data/ventes.csv")

# figureForRegion = px.pie(data, values="qte", names="region", title="Quantité vendue par région")
# figureForRegion.write_html("quantity-by-region.html")


# figureForProduct = px.pie(data, values="qte", names="produit", title="Quantité vendue par produit")
# figureForProduct.write_html("quantity-by-product.html")


# webbrowser.open("quantity-by-region.html")
# webbrowser.open("quantity-by-product.html")
