class PdfGeneratorController < ApplicationController
  def generate_pdf
    content = params[:content] || 'Default PDF content'
    timestamp = Time.now.strftime('%Y%m%d%H%M%S')
    file_name = "generated_pdf_#{timestamp}.pdf"
    
    file_path = Rails.root.join('app', 'generated', file_name)
    PdfGeneratorService.generate_pdf(content, file_path)

    respond_to do |format|
      format.html { @pdf_content = File.binread(file_path) } 
      format.pdf { send_file file_path, filename: file_name, type: 'application/pdf', disposition: 'inline' }
    end
  end
end
