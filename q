apiVersion: v1
kind: ServiceAccount
metadata:
  name:admin-user
  namespace:kube-system
---
apiVersion: rbac.authorization.k8s.io/vlbetal
kind: ClusterRoleBinding
metadata:
  name:admin-user
roleRef:
  apiGroup: rbac.authorization.k8s.io
  kind: ClusterRole
  name: cluster-admin
subjects:
- kind: ServiceAccount
  name:admin-user
  namespace: kube-system
