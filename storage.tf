resource "kubernetes_storage_class" "jenkins-sc" {
  metadata {
    name = "jenkins-sc"
  }
  storage_provisioner = "ebs.csi.aws.com"
  volume_binding_mode = "Immediate"
  parameters = {
    type = "gp2"
  }
}

#resource "kubernetes_storage_class" "jenkins-agent" {
 # metadata {
  #  name = "jenkins-agent"
  #}
  #storage_provisioner = "ebs.csi.aws.com"
  #volume_binding_mode = "Immediate"
  #parameters = {
  #  type = "gp2"
  #}
#}

#podTemplate {
 #   node(POD_LABEL) {
  #      stage ('Clone Git Repo'){
   #           sh "echo 'Cloning Git Repo'"
    #          git 'https://github.com/Ohubabs/tesla-app.git'
     #         sh "echo 'Build & JUnit Test'"
      #        sh "mvn clean package"
       #       sh "echo 'QualityTesting'"
        #      sh "mvn sonar:sonar"
        #}
#}
#}

resource "kubernetes_storage_class" "prom-sc" {
  metadata {
    name = "prom-sc"
  }
  storage_provisioner = "ebs.csi.aws.com"
  volume_binding_mode = "Immediate"
  parameters = {
    type = "gp2"
  }
}

resource "kubernetes_storage_class" "prom-sc2" {
  metadata {
    name = "prom-sc2"
  }
  storage_provisioner = "ebs.csi.aws.com"
  volume_binding_mode = "Immediate"
  parameters = {
    type = "gp2"
  }
}

resource "kubernetes_storage_class" "graf-sc" {
  metadata {
    name = "graf-sc"
  }
  storage_provisioner = "ebs.csi.aws.com"
  volume_binding_mode = "Immediate"
  parameters = {
    type = "gp2"
  }
}

resource "kubernetes_storage_class" "elastic-sc" {
  metadata {
    name = "elastic-sc"
  }
  storage_provisioner = "ebs.csi.aws.com"
  reclaim_policy      = "Retain"
  volume_binding_mode = "Immediate"
  parameters = {
    type = "gp2"
  }
}

resource "kubernetes_storage_class" "logstash-sc" {
  metadata {
    name = "logstash-sc"
  }
  storage_provisioner = "ebs.csi.aws.com"
  reclaim_policy      = "Retain"
  volume_binding_mode = "Immediate"
  parameters = {
    type = "gp2"
  }
}

resource "kubernetes_storage_class" "sonar-sc" {
  metadata {
    name = "sonar-sc"
  }
  storage_provisioner = "ebs.csi.aws.com"
  volume_binding_mode = "Immediate"
  parameters = {
    type = "gp2"
  }
}

resource "kubernetes_storage_class" "sonar-sc2" {
  metadata {
    name = "sonar-sc2"
  }
  storage_provisioner = "ebs.csi.aws.com"
  volume_binding_mode = "Immediate"
  parameters = {
    type = "gp2"
  }
}

resource "kubernetes_storage_class" "nexus-sc" {
  metadata {
    name = "nexus-sc"
  }
  storage_provisioner = "ebs.csi.aws.com"
  volume_binding_mode = "Immediate"
  parameters = {
    type = "gp2"
  }
}