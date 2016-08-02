# name: More Whitelisted Redirect Hostnames
# about: adds to the default whitelisted redirect hostnames
# version: 0.1
# authors: Maysam Torabi
# Many thanks to Régis Hanol ! https://meta.discourse.org/t/hourly-backup-only-if-something-has-changed/27274/12

PLUGIN_NAME ||= "more_whitelisted_redirect_hostnames".freeze

after_initialize do
  TopicLinkClick.class_eval do
    WHITELISTED_REDIRECT_HOSTNAMES = Set.new(%W{www.youtube.com youtu.be membros.feriassemfim.com})
  end
end