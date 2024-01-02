class PdfGeneratorService
    require 'prawn'
  
    def self.generate_pdf(content, file_path)
      pdf = Prawn::Document.new
      pdf.text content
  
      pdf.render_file(file_path)
    end
end
  