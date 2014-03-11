module CompaniesHelper
	def short_description company
		truncate(company.company_description, length: 60)
	end
end
