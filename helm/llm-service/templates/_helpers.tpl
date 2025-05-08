{{- define "mergeModels" -}}
  {{- $globalModels := .Values.global | default dict }}
  {{- $globalModels := $globalModels.models | default dict }}
  {{- $localModels := .Values.models | default dict }}
  {{- $merged := merge $localModels $globalModels }}
  {{- toJson $merged }}
{{- end }}