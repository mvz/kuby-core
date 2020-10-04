# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/recursive-open-struct/all/recursive-open-struct.rbi
#
# recursive-open-struct-1.1.2

class RecursiveOpenStruct < OpenStruct
  def [](name); end
  def []=(name, value); end
  def _create_sub_element_(hash, **overrides); end
  def _get_key_from_table_(name); end
  def delete_field(name); end
  def initialize(hash = nil, passed_options = nil); end
  def initialize_copy(orig); end
  def method_missing(mid, *args); end
  def new_ostruct_member!(name); end
  def new_ostruct_member(name); end
  def recurse_over_array(array); end
  def respond_to_missing?(mid, include_private = nil); end
  def self.default_options; end
  def to_h; end
  def to_hash; end
  include RecursiveOpenStruct::DebugInspect
  include RecursiveOpenStruct::Dig
end
module RecursiveOpenStruct::DebugInspect
  def debug_inspect(io = nil, indent_level = nil, recursion_limit = nil); end
  def display_recursive_open_struct(io, ostrct_or_hash, indent_level, recursion_limit); end
end
class RecursiveOpenStruct::DeepDup
  def call(obj); end
  def deep_dup(obj, visited = nil); end
  def initialize(opts = nil); end
  def value_or_deep_dup(value, visited); end
end
module RecursiveOpenStruct::Dig
  def dig(name, *names); end
end