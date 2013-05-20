OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'ctjg9jcLVeXzDcnGhViBw', 'eKSevS2ILM3rWkpNluNfGnSHFEJWBCr0V2MNXZLHfhM'
  provider :facebook, '133670636829337', '1e4311d345e45639745ba3e0d89d55c4'
end



