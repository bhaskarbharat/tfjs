�F
��
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring �
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape�"serve*2.0.0-beta12v2.0.0-beta0-16-g1d91213fe78�8
d
VariableVarHandleOp*
shared_name
Variable*
dtype0*
_output_shapes
: *
shape: 
z
Variable/Read/ReadVariableOpReadVariableOpVariable*
dtype0*
_output_shapes
: *
_class
loc:@Variable

NoOpNoOp
�
ConstConst"/device:CPU:0*
dtype0*
_output_shapes
: *h
value_B] BW

v

signatures
:8
VARIABLE_VALUEVariablev/.ATTRIBUTES/VARIABLE_VALUE
 
R
serving_default_xPlaceholder*
_output_shapes
: *
shape: *
dtype0
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_xVariable*)
f$R"
 __inference_signature_wrapper_32*
Tout
2**
config_proto

GPU 

CPU2J 8*
Tin
2*
_output_shapes
: 
O
saver_filenamePlaceholder*
shape: *
dtype0*
_output_shapes
: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameVariable/Read/ReadVariableOpConst*
Tin
2*
_output_shapes
: *)
_gradient_op_typePartitionedCall-62*$
fR
__inference__traced_save_61*
Tout
2**
config_proto

GPU 

CPU2J 8
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable*
Tout
2**
config_proto

GPU 

CPU2J 8*
Tin
2*
_output_shapes
: *)
_gradient_op_typePartitionedCall-78*'
f"R 
__inference__traced_restore_77�.
�
g
__inference___call___15
x
mul_readvariableop_resource
identity��mul/ReadVariableOp�
mul/ReadVariableOpReadVariableOpmul_readvariableop_resource",/job:localhost/replica:0/task:0/device:CPU:0*
dtype0*
_output_shapes
: J
mulMulxmul/ReadVariableOp:value:0*
_output_shapes
: *
T0S
IdentityIdentitymul:z:0^mul/ReadVariableOp*
T0*
_output_shapes
: "
identityIdentity:output:0*
_input_shapes
: :2(
mul/ReadVariableOpmul/ReadVariableOp: :! 

_user_specified_namex
�
W
__inference_mutate_22	
new_v
assignvariableop_resource��AssignVariableOpi
AssignVariableOpAssignVariableOpassignvariableop_resourcenew_v*
dtype0*
_output_shapes
 *
_input_shapes
: :2$
AssignVariableOpAssignVariableOp:% !

_user_specified_namenew_v: 
�
�
__inference__traced_save_61
file_prefix'
#savev2_variable_read_readvariableop
savev2_1_const

identity_1��MergeV2Checkpoints�SaveV2�SaveV2_1�
StringJoin/inputs_1Const"/device:CPU:0*<
value3B1 B+_temp_0dbb1a305bd9492c929ef910bffb3472/part*
dtype0*
_output_shapes
: s

StringJoin
StringJoinfile_prefixStringJoin/inputs_1:output:0"/device:CPU:0*
_output_shapes
: *
NL

num_shardsConst*
value	B :*
dtype0*
_output_shapes
: f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*1
value(B&Bv/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:o
SaveV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_variable_read_readvariableop"/device:CPU:0*
dtypes
2*
_output_shapes
 h
ShardedFilename_1/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B :�
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2_1/tensor_namesConst"/device:CPU:0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH*
dtype0*
_output_shapes
:q
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:�
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
dtypes
2*
_output_shapes
 �
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
T0*
N*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: s

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*
_input_shapes
: : : 2
SaveV2_1SaveV2_12(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2SaveV2: :+ '
%
_user_specified_namefile_prefix: 
�
�
__inference__traced_restore_77
file_prefix
assignvariableop_variable

identity_2��AssignVariableOp�	RestoreV2�RestoreV2_1�
RestoreV2/tensor_namesConst"/device:CPU:0*1
value(B&Bv/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:r
RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
:*
dtypes
2L
IdentityIdentityRestoreV2:tensors:0*
_output_shapes
:*
T0u
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0*
dtype0*
_output_shapes
 �
RestoreV2_1/tensor_namesConst"/device:CPU:0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH*
dtype0*
_output_shapes
:t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:�
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
_output_shapes
:*
dtypes
21
NoOpNoOp"/device:CPU:0*
_output_shapes
 m

Identity_1Identityfile_prefix^AssignVariableOp^NoOp"/device:CPU:0*
T0*
_output_shapes
: y

Identity_2IdentityIdentity_1:output:0^AssignVariableOp
^RestoreV2^RestoreV2_1*
_output_shapes
: *
T0"!

identity_2Identity_2:output:0*
_input_shapes
: :2
RestoreV2_1RestoreV2_12$
AssignVariableOpAssignVariableOp2
	RestoreV2	RestoreV2:+ '
%
_user_specified_namefile_prefix: 
�
x
 __inference_signature_wrapper_32
x"
statefulpartitionedcall_args_1
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallxstatefulpartitionedcall_args_1*)
_gradient_op_typePartitionedCall-28* 
fR
__inference___call___15*
Tout
2**
config_proto

GPU 

CPU2J 8*
Tin
2*
_output_shapes
: q
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*
_output_shapes
: "
identityIdentity:output:0*
_input_shapes
: :22
StatefulPartitionedCallStatefulPartitionedCall:! 

_user_specified_namex: "7L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*|
serving_defaulti

x
serving_default_x:0 +
output_0
StatefulPartitionedCall:0 tensorflow/serving/predict*>
__saved_model_init_op%#
__saved_model_init_op

NoOp:�
O
v

signatures
__call__

mutate"
_generic_user_object
: 2Variable
,
serving_default"
signature_map
�2�
__inference___call___15�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�	
� 
�2�
__inference_mutate_22�
���
FullArgSpec
args�
jself
jnew_v
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *�	
� 
)B'
 __inference_signature_wrapper_32xB
__inference___call___15'�
�

�
x 
� "� k
 __inference_signature_wrapper_32G�
� 
�

x
�
x ""�

output_0�
output_0 ?
__inference_mutate_22&�
�
�
new_v 
� "
 