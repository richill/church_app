class StaticPagesController < ApplicationController
  def homepg
    @events = Event.approved_events.active_events.open_events.listed_events.order("start_time asc")
    @sitemanagment = Sitemanagment.first
  end

  def aboutuspg
  end

  def aroundworldpg
  end

  def baptismpg
    @events = Event.baptism_events 
  end

  def bibleandyoupg 
    @events = Event.approved_events.active_events.open_events.biblestudies_events.asc_order
  end

  def broadfieldresoucepg 
  end

  # ----------------- jobs -----------------
  def careersvolunteerspg  
    @jobs = Job.aprroved_jobs.opened_jobs.desc_order
  end

  def churchjobspg
    @jobs = Job.aprroved_jobs.opened_jobs.church_jobs.desc_order
  end

  def careerjobspg
    @jobs = Job.aprroved_jobs.opened_jobs.career_jobs.desc_order
  end

  def volunteerpg
    @jobs = Job.aprroved_jobs.opened_jobs.volunteer_jobs.desc_order
  end
  # ----------------- jobs -----------------


  # ---------------- members ----------------
  def pastoronepg
  end

  def pastortwopg
  end

  def pastorthreepg
  end

  def pastorfourpg
  end

  def pastorfivepg
  end

  def pastorsixpg
  end

  def prayerpg
  end

  def deacononepg
  end

  def teamleaderonepg
  end

  def teamleadertwopg
  end

  def teamleaderthreepg
  end

  def teamleaderfourpg
  end

  def teamleaderfivepg
  end

  def teamleadersixpg
  end
  # ---------------- members ----------------

  def contactpg  
  end

  def contactlistpg  
  end

  def connectdpg
    @launchministries = Launchministry.approved_ministries
  end

  def childrenteenpg  
  end

  def directionpg  
  end

  def donatepg
  end

  def faqpg
  end

  def forumpg
    @discussions = Discussion.all
  end

  def getconnectedpg
  end

  def gdprpg
  end

  def growpg
  end

  def leadershipdevelopmentpg  
    @events = Event.approved_events.active_events.open_events.leadership_events.asc_order 
  end

  def mediaandcomepg
  end

  def ministryideapg
  end

  def missionvisionpg
  end

  def ministryteampg
  end

  def nextstepspg 
  end

  def ourchurchpg
  end

  def ourcommunitypg
  end

  def ourpeoplepg
  end

  def pastoralteampg
  end

  def practicalneedspg
    @practicalneeds = Practicalneed.approved_practicalneeds.open_practicalneeds.desc_order
  end

  def privacypg
  end

  def receivechristpg
  end

  def recreadingplanpg
    @recommendedreadings = Recommendedreading.all
  end

  def resourcespg
  end

  def servepg
  end

  def servicetimespg
  end

  def smallgroupspg
    @smallgroups = Smallgroup.all
  end

  def statementfaithpg
  end

  def supportpg 
  end

  def thankyoupg
  end

  def thebiblepg
  end

  def usefulservicespg  
  end

  def youthpg
  end

  def errorpg
  end
end
