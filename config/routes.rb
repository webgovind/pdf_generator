Rails.application.routes.draw do
  get 'pdf_generator/generate_pdf'
  post 'pdf_generator/generate_pdf'
  root 'pdf_generator#generate_pdf'
end
