autoload -U colors; colors

prompt_kubecontext() {
  kubectx="<- kube-$(kubectl config current-context) ->"
  if [[ ${kubectx} == *"local"* ||
        ${kubectx} == *"minikube"* ||
        ${kubectx} == *"lab"* ]]; then
        prompt_segment black green "${kubectx}"
  elif [[ ${kubectx} == *"dev"* ||
          ${kubectx} == *"acc"* ]]; then
        prompt_segment black yellow "${kubectx}"
  elif [[ ${kubectx} == *"prod"* ||
          ${kubectx} == *"infra"* ]]; then
        prompt_segment black red "${kubectx}"
  fi
}
RPROMPT='$(prompt_kubecontext)'
