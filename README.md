# terraform-odoo

## Para executar:

### TerraForm Init
```
~# terraform init
```

### TerraForm Plan (save output file)
```
~# terraform plan \
    -var "do_token=${DO_PAT}" \
    -var "pvt_key=$HOME/.ssh/id_rsa" \
    -out output
```

### TerraForm Apply
```
~# terraform apply output
```

### TerraForm Destroy
```
~# terraform destroy \
  -var "do_token=${DO_PAT}" \
  -var "pvt_key=$HOME/.ssh/id_rsa" \
```