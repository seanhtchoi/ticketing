# Microservice Boilerplate

### Installation
```bash
# /
./script/update-npm.sh
./script/update-package.sh
```

### Git
```bash
# Windows
# Control Panel\User Accounts\Credential Manager ==> Remove

# /
git init
# http://vcloud-lab.com/entries/devops/resolved-git-warning-lf-will-be-replaced-by-crlf-in-file
git config --global core.autocrlf true
git config --global user.email "seanhtchoi@gmail.com"
git config --global user.name "Sean Choi"
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/seanhtchoi/ticketing.git
git push -u origin main

# /common/
git init
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/seanhtchoi/common.git
git push -u origin main
```

### Common
```bash
# https://docs.npmjs.com/creating-and-publishing-private-packages
# /common/
npm login
npm install
npm init --scope=@scticketing

# /
./script/update-common.sh
```

### Testing
```bash
# /auth/
npm run test
```

### Secrets
```bash
# Context: docker-desktop
kubectl create secret generic jwt-key --from-literal=JWT_KEY=dev
kubectl create secret generic stripe-key --from-literal=STRIPE_KEY=dev

kubectl get secrets
kubectl describe secret jwt-key
kubectl delete secret jwt-key
```

### Skaffold
```bash
# https://stackoverflow.com/questions/59148598/how-to-get-gcloud-auth-docker-helper-out-of-the-habit-to-hook-into-non-related-d

kubectl delete namespace ingress-nginx
# https://kubernetes.github.io/ingress-nginx/deploy/#docker-desktop
# https://kubernetes.github.io/ingress-nginx/deploy/#quick-start
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.0/deploy/static/provider/cloud/deploy.yaml
kubectl delete -A ValidatingWebhookConfiguration ingress-nginx-admission

skaffold dev
# localhost

skaffold delete
```