(**
	Gzip bindings
	@author Christopher Cramer <tsuyoshi@yumegakanau.org>
*)
signature GZIP = sig
	(**
		This is raised when the GZip library returns an error.
		It will happen on corrupt or nonexistent files, hardware failure, etc.
	*)
	exception Failure

	(**
		Open a gzip file for reading
		@params filename
		@param filename name of the file to open
		@return SOME r, where r is a primitive reader,
			or NONE if the file could not be opened
	*)
	val reader: string -> TextPrimIO.reader option

	(**
		Open a gzip file for reading and returns a text input stream.
		@params filename
		@param filename name of the file to open
		@return text input stream
		@exception Failure, when the file can not be opened
	*)
	val openIn: string -> TextIO.instream

	(**
		Open a gzip file for writing
		@params filename
		@param filename name of the file to open
		@return SOME w, where w is a primitive writer,
			or NONE if the file could not be opened
	*)
	val writer: string -> TextPrimIO.writer option

	(**
		Opens a gzip file for writing
		@params filename
		@param filename name of the file to open
		@return text input stream
		@exception Failure, when the file can not be opened
	*)
	val openOut: string -> TextIO.outstream
end
