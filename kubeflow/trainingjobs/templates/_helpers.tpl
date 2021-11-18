{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "training.fullname" -}}
{{- printf "%s-%s" .Release.Name "training-jobs" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "type" -}}
{{- "polyaxon-integration" -}}
{{- end -}}

{{- define "roles.config" -}}
{{- "polyaxon-config" -}}
{{- end -}}

{{- define "roles.worker" -}}
{{- "polyaxon-workers" -}}
{{- end -}}
