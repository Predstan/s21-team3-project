ƞ
�-�-
:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AddV2
x"T
y"T
z"T"
Ttype:
2	��
�
ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"
output_typetype0	:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype�
�
AudioMicrofrontend	
audio
filterbanks"out_type"
sample_rateint�}"
window_sizeint"
window_stepint
"
num_channelsint " 
upper_band_limitfloat% `�E" 
lower_band_limitfloat%  �B"
smoothing_bitsint
"
even_smoothingfloat%���<"
odd_smoothingfloat%��u="$
min_signal_remainingfloat%��L="
enable_pcanbool( "
pcan_strengthfloat%33s?"
pcan_offsetfloat%  �B"
	gain_bitsint"

enable_logbool("
scale_shiftint"
left_contextint "
right_contextint "
frame_strideint"
zero_paddingbool( "
	out_scaleint"
out_typetype0:
2
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

�
	DecodeWav
contents	
audio
sample_rate"$
desired_channelsint���������"#
desired_samplesint���������
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
R
Equal
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
=
Mul
x"T
y"T
z"T"
Ttype:
2	�
0
Neg
x"T
y"T"
Ttype:
2
	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
&
ReadFile
filename
contents
@
ReadVariableOp
resource
value"dtype"
dtypetype�
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
}
ResourceApplyGradientDescent
var

alpha"T

delta"T" 
Ttype:
2	"
use_lockingbool( �
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
�
#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
�
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�
&
	ZerosLike
x"T
y"T"	
Ttype"serve*2.4.12unknown��
Q
dropout_ratePlaceholder*
_output_shapes
:*
dtype0*
shape:
v
fingerprint_inputPlaceholder*(
_output_shapes
:����������*
dtype0*
shape:����������
f
Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����1   (      
|
ReshapeReshapefingerprint_inputReshape/shape*
T0*
Tshape0*/
_output_shapes
:���������1(
�
>first_weights/first_weights/Initializer/truncated_normal/shapeConst*.
_class$
" loc:@first_weights/first_weights*
_output_shapes
:*
dtype0*%
valueB"
            
�
=first_weights/first_weights/Initializer/truncated_normal/meanConst*.
_class$
" loc:@first_weights/first_weights*
_output_shapes
: *
dtype0*
valueB
 *    
�
?first_weights/first_weights/Initializer/truncated_normal/stddevConst*.
_class$
" loc:@first_weights/first_weights*
_output_shapes
: *
dtype0*
valueB
 *
�#<
�
Hfirst_weights/first_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormal>first_weights/first_weights/Initializer/truncated_normal/shape*
T0*.
_class$
" loc:@first_weights/first_weights*&
_output_shapes
:
*
dtype0*

seed *
seed2 
�
<first_weights/first_weights/Initializer/truncated_normal/mulMulHfirst_weights/first_weights/Initializer/truncated_normal/TruncatedNormal?first_weights/first_weights/Initializer/truncated_normal/stddev*
T0*.
_class$
" loc:@first_weights/first_weights*&
_output_shapes
:

�
8first_weights/first_weights/Initializer/truncated_normalAdd<first_weights/first_weights/Initializer/truncated_normal/mul=first_weights/first_weights/Initializer/truncated_normal/mean*
T0*.
_class$
" loc:@first_weights/first_weights*&
_output_shapes
:

�
first_weights/first_weightsVarHandleOp*.
_class$
" loc:@first_weights/first_weights*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:
*,
shared_namefirst_weights/first_weights
�
<first_weights/first_weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpfirst_weights/first_weights*
_output_shapes
: 
�
"first_weights/first_weights/AssignAssignVariableOpfirst_weights/first_weights8first_weights/first_weights/Initializer/truncated_normal*
dtype0
�
/first_weights/first_weights/Read/ReadVariableOpReadVariableOpfirst_weights/first_weights*&
_output_shapes
:
*
dtype0
�
'first_bias/first_bias/Initializer/zerosConst*(
_class
loc:@first_bias/first_bias*
_output_shapes
:*
dtype0*
valueB*    
�
first_bias/first_biasVarHandleOp*(
_class
loc:@first_bias/first_bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*&
shared_namefirst_bias/first_bias
{
6first_bias/first_bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpfirst_bias/first_bias*
_output_shapes
: 
}
first_bias/first_bias/AssignAssignVariableOpfirst_bias/first_bias'first_bias/first_bias/Initializer/zeros*
dtype0
{
)first_bias/first_bias/Read/ReadVariableOpReadVariableOpfirst_bias/first_bias*
_output_shapes
:*
dtype0
y
Conv2D/ReadVariableOpReadVariableOpfirst_weights/first_weights*&
_output_shapes
:
*
dtype0
�
Conv2DConv2DReshapeConv2D/ReadVariableOp*
T0*/
_output_shapes
:���������*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
d
add/ReadVariableOpReadVariableOpfirst_bias/first_bias*
_output_shapes
:*
dtype0
b
addAddV2Conv2Dadd/ReadVariableOp*
T0*/
_output_shapes
:���������
K
ReluReluadd*
T0*/
_output_shapes
:���������
R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
R
dropout/SubSubdropout/Constdropout_rate*
T0*
_output_shapes
:
P
dropout/RealDivRealDivReludropout/Sub*
T0*
_output_shapes
:
Q
dropout/ShapeShapeRelu*
T0*
_output_shapes
:*
out_type0
�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape*
T0*/
_output_shapes
:���������*
dtype0*

seed *
seed2 
{
dropout/GreaterEqualGreaterEqual$dropout/random_uniform/RandomUniformdropout_rate*
T0*
_output_shapes
:
l
dropout/CastCastdropout/GreaterEqual*

DstT0*

SrcT0
*
Truncate( *
_output_shapes
:
k
dropout/MulMuldropout/RealDivdropout/Cast*
T0*/
_output_shapes
:���������
`
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  
s
	Reshape_1Reshapedropout/MulReshape_1/shape*
T0*
Tshape0*(
_output_shapes
:����������
�
Bsoftmax_weights/softmax_weights/Initializer/truncated_normal/shapeConst*2
_class(
&$loc:@softmax_weights/softmax_weights*
_output_shapes
:*
dtype0*
valueB"�     
�
Asoftmax_weights/softmax_weights/Initializer/truncated_normal/meanConst*2
_class(
&$loc:@softmax_weights/softmax_weights*
_output_shapes
: *
dtype0*
valueB
 *    
�
Csoftmax_weights/softmax_weights/Initializer/truncated_normal/stddevConst*2
_class(
&$loc:@softmax_weights/softmax_weights*
_output_shapes
: *
dtype0*
valueB
 *
�#<
�
Lsoftmax_weights/softmax_weights/Initializer/truncated_normal/TruncatedNormalTruncatedNormalBsoftmax_weights/softmax_weights/Initializer/truncated_normal/shape*
T0*2
_class(
&$loc:@softmax_weights/softmax_weights*
_output_shapes
:	�*
dtype0*

seed *
seed2 
�
@softmax_weights/softmax_weights/Initializer/truncated_normal/mulMulLsoftmax_weights/softmax_weights/Initializer/truncated_normal/TruncatedNormalCsoftmax_weights/softmax_weights/Initializer/truncated_normal/stddev*
T0*2
_class(
&$loc:@softmax_weights/softmax_weights*
_output_shapes
:	�
�
<softmax_weights/softmax_weights/Initializer/truncated_normalAdd@softmax_weights/softmax_weights/Initializer/truncated_normal/mulAsoftmax_weights/softmax_weights/Initializer/truncated_normal/mean*
T0*2
_class(
&$loc:@softmax_weights/softmax_weights*
_output_shapes
:	�
�
softmax_weights/softmax_weightsVarHandleOp*2
_class(
&$loc:@softmax_weights/softmax_weights*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:	�*0
shared_name!softmax_weights/softmax_weights
�
@softmax_weights/softmax_weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpsoftmax_weights/softmax_weights*
_output_shapes
: 
�
&softmax_weights/softmax_weights/AssignAssignVariableOpsoftmax_weights/softmax_weights<softmax_weights/softmax_weights/Initializer/truncated_normal*
dtype0
�
3softmax_weights/softmax_weights/Read/ReadVariableOpReadVariableOpsoftmax_weights/softmax_weights*
_output_shapes
:	�*
dtype0
�
+softmax_bias/softmax_bias/Initializer/zerosConst*,
_class"
 loc:@softmax_bias/softmax_bias*
_output_shapes
:*
dtype0*
valueB*    
�
softmax_bias/softmax_biasVarHandleOp*,
_class"
 loc:@softmax_bias/softmax_bias*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:**
shared_namesoftmax_bias/softmax_bias
�
:softmax_bias/softmax_bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpsoftmax_bias/softmax_bias*
_output_shapes
: 
�
 softmax_bias/softmax_bias/AssignAssignVariableOpsoftmax_bias/softmax_bias+softmax_bias/softmax_bias/Initializer/zeros*
dtype0
�
-softmax_bias/softmax_bias/Read/ReadVariableOpReadVariableOpsoftmax_bias/softmax_bias*
_output_shapes
:*
dtype0
v
MatMul/ReadVariableOpReadVariableOpsoftmax_weights/softmax_weights*
_output_shapes
:	�*
dtype0
�
MatMulMatMul	Reshape_1MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������*
transpose_a( *
transpose_b( 
j
add_1/ReadVariableOpReadVariableOpsoftmax_bias/softmax_bias*
_output_shapes
:*
dtype0
^
add_1AddV2MatMuladd_1/ReadVariableOp*
T0*'
_output_shapes
:���������

global_step/Initializer/zerosConst*
_class
loc:@global_step*
_output_shapes
: *
dtype0	*
value	B	 R 
�
global_stepVarHandleOp*
_class
loc:@global_step*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0	*
shape: *
shared_nameglobal_step
g
,global_step/IsInitialized/VarIsInitializedOpVarIsInitializedOpglobal_step*
_output_shapes
: 
_
global_step/AssignAssignVariableOpglobal_stepglobal_step/Initializer/zeros*
dtype0	
c
global_step/Read/ReadVariableOpReadVariableOpglobal_step*
_output_shapes
: *
dtype0	
I
wav_namePlaceholder*
_output_shapes
: *
dtype0*
shape: 
;
reader_readerReadFilewav_name*
_output_shapes
: 
z
wav_decoder	DecodeWavreader_reader*!
_output_shapes
:	�}: *
desired_channels*
desired_samples�}
J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   G
H
MulMulwav_decoderMul/y*
T0*
_output_shapes
:	�}
Z
CastCastMul*

DstT0*

SrcT0*
Truncate( *
_output_shapes
:	�}
b
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������
_
	Reshape_2ReshapeCastReshape_2/shape*
T0*
Tshape0*
_output_shapes	
:�}
�
AudioMicrofrontendAudioMicrofrontend	Reshape_2*
_output_shapes

:1(*

enable_log(*
enable_pcan(*
even_smoothing%���<*
frame_stride*
	gain_bits*
left_context *
lower_band_limit%  �B*
min_signal_remaining%��L=*
num_channels(*
odd_smoothing%��u=*
	out_scale*
out_type0*
pcan_offset%  �B*
pcan_strength%33s?*
right_context *
sample_rate�}*
scale_shift*
smoothing_bits
*
upper_band_limit% `�E*
window_size*
window_step*
zero_padding( 
L
Mul_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   =
R
Mul_1MulAudioMicrofrontendMul_1/y*
T0*
_output_shapes

:1(
l
groundtruth_inputPlaceholder*#
_output_shapes
:���������*
dtype0	*
shape:���������
z
5cross_entropy/sparse_softmax_cross_entropy_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
>cross_entropy/sparse_softmax_cross_entropy_loss/xentropy/ShapeShapegroundtruth_input*
T0	*
_output_shapes
:*
out_type0
�
Across_entropy/sparse_softmax_cross_entropy_loss/xentropy/xentropy#SparseSoftmaxCrossEntropyWithLogitsadd_1groundtruth_input*
T0*
Tlabels0	*6
_output_shapes$
":���������:���������
�
Rcross_entropy/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
dtype0*
valueB 
�
Qcross_entropy/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 
�
Qcross_entropy/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/shapeShapeAcross_entropy/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
_output_shapes
:*
out_type0
�
Pcross_entropy/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
h
`cross_entropy/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
�
3cross_entropy/sparse_softmax_cross_entropy_loss/MulMulAcross_entropy/sparse_softmax_cross_entropy_loss/xentropy/xentropy5cross_entropy/sparse_softmax_cross_entropy_loss/Consta^cross_entropy/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*#
_output_shapes
:���������
�
7cross_entropy/sparse_softmax_cross_entropy_loss/Const_1Consta^cross_entropy/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
dtype0*
valueB: 
�
3cross_entropy/sparse_softmax_cross_entropy_loss/SumSum3cross_entropy/sparse_softmax_cross_entropy_loss/Mul7cross_entropy/sparse_softmax_cross_entropy_loss/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
Ccross_entropy/sparse_softmax_cross_entropy_loss/num_present/Equal/yConsta^cross_entropy/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *    
�
Across_entropy/sparse_softmax_cross_entropy_loss/num_present/EqualEqual5cross_entropy/sparse_softmax_cross_entropy_loss/ConstCcross_entropy/sparse_softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
: *
incompatible_shape_error(
�
Fcross_entropy/sparse_softmax_cross_entropy_loss/num_present/zeros_likeConsta^cross_entropy/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *    
�
Kcross_entropy/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeConsta^cross_entropy/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB 
�
Kcross_entropy/sparse_softmax_cross_entropy_loss/num_present/ones_like/ConstConsta^cross_entropy/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
Ecross_entropy/sparse_softmax_cross_entropy_loss/num_present/ones_likeFillKcross_entropy/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeKcross_entropy/sparse_softmax_cross_entropy_loss/num_present/ones_like/Const*
T0*
_output_shapes
: *

index_type0
�
Bcross_entropy/sparse_softmax_cross_entropy_loss/num_present/SelectSelectAcross_entropy/sparse_softmax_cross_entropy_loss/num_present/EqualFcross_entropy/sparse_softmax_cross_entropy_loss/num_present/zeros_likeEcross_entropy/sparse_softmax_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 
�
pcross_entropy/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConsta^cross_entropy/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB 
�
ocross_entropy/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConsta^cross_entropy/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
value	B : 
�
ocross_entropy/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShapeAcross_entropy/sparse_softmax_cross_entropy_loss/xentropy/xentropya^cross_entropy/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:*
out_type0
�
ncross_entropy/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConsta^cross_entropy/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
value	B :
�
~cross_entropy/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpa^cross_entropy/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success
�
]cross_entropy/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShapeAcross_entropy/sparse_softmax_cross_entropy_loss/xentropy/xentropya^cross_entropy/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success^cross_entropy/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:*
out_type0
�
]cross_entropy/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConsta^cross_entropy/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success^cross_entropy/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
Wcross_entropy/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFill]cross_entropy/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Shape]cross_entropy/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*#
_output_shapes
:���������*

index_type0
�
Mcross_entropy/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsMulBcross_entropy/sparse_softmax_cross_entropy_loss/num_present/SelectWcross_entropy/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:���������
�
Across_entropy/sparse_softmax_cross_entropy_loss/num_present/ConstConsta^cross_entropy/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
dtype0*
valueB: 
�
;cross_entropy/sparse_softmax_cross_entropy_loss/num_presentSumMcross_entropy/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsAcross_entropy/sparse_softmax_cross_entropy_loss/num_present/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
4cross_entropy/sparse_softmax_cross_entropy_loss/RankConsta^cross_entropy/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
value	B : 
�
;cross_entropy/sparse_softmax_cross_entropy_loss/range/startConsta^cross_entropy/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
value	B : 
�
;cross_entropy/sparse_softmax_cross_entropy_loss/range/deltaConsta^cross_entropy/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
value	B :
�
5cross_entropy/sparse_softmax_cross_entropy_loss/rangeRange;cross_entropy/sparse_softmax_cross_entropy_loss/range/start4cross_entropy/sparse_softmax_cross_entropy_loss/Rank;cross_entropy/sparse_softmax_cross_entropy_loss/range/delta*

Tidx0*
_output_shapes
: 
�
5cross_entropy/sparse_softmax_cross_entropy_loss/Sum_1Sum3cross_entropy/sparse_softmax_cross_entropy_loss/Sum5cross_entropy/sparse_softmax_cross_entropy_loss/range*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
5cross_entropy/sparse_softmax_cross_entropy_loss/valueDivNoNan5cross_entropy/sparse_softmax_cross_entropy_loss/Sum_1;cross_entropy/sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
T
learning_rate_inputPlaceholder*
_output_shapes
: *
dtype0*
shape: 
R
gradients/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
X
gradients/grad_ys_0Const*
_output_shapes
: *
dtype0*
valueB
 *  �?
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*
_output_shapes
: *

index_type0
�
Jgradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
�
Lgradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
�
Zgradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgsJgradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/ShapeLgradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Ogradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/div_no_nanDivNoNangradients/Fill;cross_entropy/sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
�
Hgradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/SumSumOgradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/div_no_nanZgradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
Lgradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/ReshapeReshapeHgradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/SumJgradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
�
Hgradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/NegNeg5cross_entropy/sparse_softmax_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 
�
Qgradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/div_no_nan_1DivNoNanHgradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/Neg;cross_entropy/sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
�
Qgradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/div_no_nan_2DivNoNanQgradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/div_no_nan_1;cross_entropy/sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
�
Hgradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/mulMulgradients/FillQgradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/div_no_nan_2*
T0*
_output_shapes
: 
�
Jgradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/Sum_1SumHgradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/mul\gradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
Ngradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/Reshape_1ReshapeJgradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/Sum_1Lgradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
Ugradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOpM^gradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/ReshapeO^gradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/Reshape_1
�
]gradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentityLgradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/ReshapeV^gradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*_
_classU
SQloc:@gradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/Reshape*
_output_shapes
: 
�
_gradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1IdentityNgradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/Reshape_1V^gradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*a
_classW
USloc:@gradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/Reshape_1*
_output_shapes
: 
�
Rgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 
�
Tgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 
�
Lgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshape]gradients/cross_entropy/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependencyTgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape_1*
T0*
Tshape0*
_output_shapes
: 
�
Jgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Sum_1_grad/ConstConst*
_output_shapes
: *
dtype0*
valueB 
�
Igradients/cross_entropy/sparse_softmax_cross_entropy_loss/Sum_1_grad/TileTileLgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Sum_1_grad/ReshapeJgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Sum_1_grad/Const*
T0*

Tmultiples0*
_output_shapes
: 
�
Pgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
�
Jgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeReshapeIgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Sum_1_grad/TilePgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
�
Hgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Sum_grad/ShapeShape3cross_entropy/sparse_softmax_cross_entropy_loss/Mul*
T0*
_output_shapes
:*
out_type0
�
Ggradients/cross_entropy/sparse_softmax_cross_entropy_loss/Sum_grad/TileTileJgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeHgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Sum_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:���������
�
Hgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeShapeAcross_entropy/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
_output_shapes
:*
out_type0
�
Jgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1Shape5cross_entropy/sparse_softmax_cross_entropy_loss/Const*
T0*
_output_shapes
: *
out_type0
�
Xgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsHgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeJgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Fgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/MulMulGgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Sum_grad/Tile5cross_entropy/sparse_softmax_cross_entropy_loss/Const*
T0*#
_output_shapes
:���������
�
Fgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/SumSumFgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/MulXgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
Jgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeReshapeFgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/SumHgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
Hgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/Mul_1MulAcross_entropy/sparse_softmax_cross_entropy_loss/xentropy/xentropyGgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Sum_grad/Tile*
T0*#
_output_shapes
:���������
�
Hgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1SumHgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/Mul_1Zgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
Lgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1ReshapeHgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1Jgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
Sgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOpK^gradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeM^gradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1
�
[gradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentityJgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeT^gradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*]
_classS
QOloc:@gradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape*#
_output_shapes
:���������
�
]gradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1IdentityLgradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1T^gradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*_
_classU
SQloc:@gradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1*
_output_shapes
: 
�
gradients/zeros_like	ZerosLikeCcross_entropy/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*'
_output_shapes
:���������
�
_gradients/cross_entropy/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
[gradients/cross_entropy/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims
ExpandDims[gradients/cross_entropy/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_gradients/cross_entropy/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dim*
T0*

Tdim0*'
_output_shapes
:���������
�
Tgradients/cross_entropy/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulMul[gradients/cross_entropy/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDimsCcross_entropy/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*'
_output_shapes
:���������
`
gradients/add_1_grad/ShapeShapeMatMul*
T0*
_output_shapes
:*
out_type0
p
gradients/add_1_grad/Shape_1Shapeadd_1/ReadVariableOp*
T0*
_output_shapes
:*
out_type0
�
*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_1_grad/SumSumTgradients/cross_entropy/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mul*gradients/add_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
gradients/add_1_grad/Sum_1SumTgradients/cross_entropy/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mul,gradients/add_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
�
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_1_grad/Reshape*'
_output_shapes
:���������
�
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1*
_output_shapes
:
�
gradients/MatMul_grad/MatMulMatMul-gradients/add_1_grad/tuple/control_dependencyMatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b(
�
gradients/MatMul_grad/MatMul_1MatMul	Reshape_1-gradients/add_1_grad/tuple/control_dependency*
T0*
_output_shapes
:	�*
transpose_a(*
transpose_b( 
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
�
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*(
_output_shapes
:����������
�
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1*
_output_shapes
:	�
i
gradients/Reshape_1_grad/ShapeShapedropout/Mul*
T0*
_output_shapes
:*
out_type0
�
 gradients/Reshape_1_grad/ReshapeReshape.gradients/MatMul_grad/tuple/control_dependencygradients/Reshape_1_grad/Shape*
T0*
Tshape0*/
_output_shapes
:���������
x
 gradients/dropout/Mul_grad/ShapeShapedropout/RealDiv*
T0*#
_output_shapes
:���������*
out_type0
w
"gradients/dropout/Mul_grad/Shape_1Shapedropout/Cast*
T0*#
_output_shapes
:���������*
out_type0
�
0gradients/dropout/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/dropout/Mul_grad/Shape"gradients/dropout/Mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
x
gradients/dropout/Mul_grad/MulMul gradients/Reshape_1_grad/Reshapedropout/Cast*
T0*
_output_shapes
:
�
gradients/dropout/Mul_grad/SumSumgradients/dropout/Mul_grad/Mul0gradients/dropout/Mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
"gradients/dropout/Mul_grad/ReshapeReshapegradients/dropout/Mul_grad/Sum gradients/dropout/Mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
}
 gradients/dropout/Mul_grad/Mul_1Muldropout/RealDiv gradients/Reshape_1_grad/Reshape*
T0*
_output_shapes
:
�
 gradients/dropout/Mul_grad/Sum_1Sum gradients/dropout/Mul_grad/Mul_12gradients/dropout/Mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
$gradients/dropout/Mul_grad/Reshape_1Reshape gradients/dropout/Mul_grad/Sum_1"gradients/dropout/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

+gradients/dropout/Mul_grad/tuple/group_depsNoOp#^gradients/dropout/Mul_grad/Reshape%^gradients/dropout/Mul_grad/Reshape_1
�
3gradients/dropout/Mul_grad/tuple/control_dependencyIdentity"gradients/dropout/Mul_grad/Reshape,^gradients/dropout/Mul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dropout/Mul_grad/Reshape*
_output_shapes
:
�
5gradients/dropout/Mul_grad/tuple/control_dependency_1Identity$gradients/dropout/Mul_grad/Reshape_1,^gradients/dropout/Mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dropout/Mul_grad/Reshape_1*
_output_shapes
:
h
$gradients/dropout/RealDiv_grad/ShapeShapeRelu*
T0*
_output_shapes
:*
out_type0
z
&gradients/dropout/RealDiv_grad/Shape_1Shapedropout/Sub*
T0*#
_output_shapes
:���������*
out_type0
�
4gradients/dropout/RealDiv_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/dropout/RealDiv_grad/Shape&gradients/dropout/RealDiv_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
&gradients/dropout/RealDiv_grad/RealDivRealDiv3gradients/dropout/Mul_grad/tuple/control_dependencydropout/Sub*
T0*
_output_shapes
:
�
"gradients/dropout/RealDiv_grad/SumSum&gradients/dropout/RealDiv_grad/RealDiv4gradients/dropout/RealDiv_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
&gradients/dropout/RealDiv_grad/ReshapeReshape"gradients/dropout/RealDiv_grad/Sum$gradients/dropout/RealDiv_grad/Shape*
T0*
Tshape0*/
_output_shapes
:���������
i
"gradients/dropout/RealDiv_grad/NegNegRelu*
T0*/
_output_shapes
:���������
�
(gradients/dropout/RealDiv_grad/RealDiv_1RealDiv"gradients/dropout/RealDiv_grad/Negdropout/Sub*
T0*
_output_shapes
:
�
(gradients/dropout/RealDiv_grad/RealDiv_2RealDiv(gradients/dropout/RealDiv_grad/RealDiv_1dropout/Sub*
T0*
_output_shapes
:
�
"gradients/dropout/RealDiv_grad/mulMul3gradients/dropout/Mul_grad/tuple/control_dependency(gradients/dropout/RealDiv_grad/RealDiv_2*
T0*
_output_shapes
:
�
$gradients/dropout/RealDiv_grad/Sum_1Sum"gradients/dropout/RealDiv_grad/mul6gradients/dropout/RealDiv_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
(gradients/dropout/RealDiv_grad/Reshape_1Reshape$gradients/dropout/RealDiv_grad/Sum_1&gradients/dropout/RealDiv_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
�
/gradients/dropout/RealDiv_grad/tuple/group_depsNoOp'^gradients/dropout/RealDiv_grad/Reshape)^gradients/dropout/RealDiv_grad/Reshape_1
�
7gradients/dropout/RealDiv_grad/tuple/control_dependencyIdentity&gradients/dropout/RealDiv_grad/Reshape0^gradients/dropout/RealDiv_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dropout/RealDiv_grad/Reshape*/
_output_shapes
:���������
�
9gradients/dropout/RealDiv_grad/tuple/control_dependency_1Identity(gradients/dropout/RealDiv_grad/Reshape_10^gradients/dropout/RealDiv_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dropout/RealDiv_grad/Reshape_1*
_output_shapes
:
�
gradients/Relu_grad/ReluGradReluGrad7gradients/dropout/RealDiv_grad/tuple/control_dependencyRelu*
T0*/
_output_shapes
:���������
^
gradients/add_grad/ShapeShapeConv2D*
T0*
_output_shapes
:*
out_type0
l
gradients/add_grad/Shape_1Shapeadd/ReadVariableOp*
T0*
_output_shapes
:*
out_type0
�
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/add_grad/SumSumgradients/Relu_grad/ReluGrad(gradients/add_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0*/
_output_shapes
:���������
�
gradients/add_grad/Sum_1Sumgradients/Relu_grad/ReluGrad*gradients/add_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
�
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/add_grad/Reshape*/
_output_shapes
:���������
�
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1*
_output_shapes
:
�
gradients/Conv2D_grad/ShapeNShapeNReshapeConv2D/ReadVariableOp*
N*
T0* 
_output_shapes
::*
out_type0
�
)gradients/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_grad/ShapeNConv2D/ReadVariableOp+gradients/add_grad/tuple/control_dependency*
T0*/
_output_shapes
:���������1(*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
�
*gradients/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterReshapegradients/Conv2D_grad/ShapeN:1+gradients/add_grad/tuple/control_dependency*
T0*&
_output_shapes
:
*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
�
&gradients/Conv2D_grad/tuple/group_depsNoOp+^gradients/Conv2D_grad/Conv2DBackpropFilter*^gradients/Conv2D_grad/Conv2DBackpropInput
�
.gradients/Conv2D_grad/tuple/control_dependencyIdentity)gradients/Conv2D_grad/Conv2DBackpropInput'^gradients/Conv2D_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:���������1(
�
0gradients/Conv2D_grad/tuple/control_dependency_1Identity*gradients/Conv2D_grad/Conv2DBackpropFilter'^gradients/Conv2D_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:

�
OGradientDescent/update_first_weights/first_weights/ResourceApplyGradientDescentResourceApplyGradientDescentfirst_weights/first_weightslearning_rate_input0gradients/Conv2D_grad/tuple/control_dependency_1*
T0*.
_class$
" loc:@first_weights/first_weights*
use_locking( 
�
IGradientDescent/update_first_bias/first_bias/ResourceApplyGradientDescentResourceApplyGradientDescentfirst_bias/first_biaslearning_rate_input-gradients/add_grad/tuple/control_dependency_1*
T0*(
_class
loc:@first_bias/first_bias*
use_locking( 
�
SGradientDescent/update_softmax_weights/softmax_weights/ResourceApplyGradientDescentResourceApplyGradientDescentsoftmax_weights/softmax_weightslearning_rate_input0gradients/MatMul_grad/tuple/control_dependency_1*
T0*2
_class(
&$loc:@softmax_weights/softmax_weights*
use_locking( 
�
MGradientDescent/update_softmax_bias/softmax_bias/ResourceApplyGradientDescentResourceApplyGradientDescentsoftmax_bias/softmax_biaslearning_rate_input/gradients/add_1_grad/tuple/control_dependency_1*
T0*,
_class"
 loc:@softmax_bias/softmax_bias*
use_locking( 
�
GradientDescentNoOpJ^GradientDescent/update_first_bias/first_bias/ResourceApplyGradientDescentP^GradientDescent/update_first_weights/first_weights/ResourceApplyGradientDescentN^GradientDescent/update_softmax_bias/softmax_bias/ResourceApplyGradientDescentT^GradientDescent/update_softmax_weights/softmax_weights/ResourceApplyGradientDescent
R
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
v
ArgMaxArgMaxadd_1ArgMax/dimension*
T0*

Tidx0*#
_output_shapes
:���������*
output_type0	
w
EqualEqualArgMaxgroundtruth_input*
T0	*#
_output_shapes
:���������*
incompatible_shape_error(
b
Cast_1CastEqual*

DstT0*

SrcT0
*
Truncate( *#
_output_shapes
:���������
O
ConstConst*
_output_shapes
:*
dtype0*
valueB: 
Y
MeanMeanCast_1Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
�
save/SaveV2/tensor_namesConst*
_output_shapes
:*
dtype0*�
value�B�Bfirst_bias/first_biasBfirst_weights/first_weightsBglobal_stepBsoftmax_bias/softmax_biasBsoftmax_weights/softmax_weights
m
save/SaveV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueBB B B B B 
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices)first_bias/first_bias/Read/ReadVariableOp/first_weights/first_weights/Read/ReadVariableOpglobal_step/Read/ReadVariableOp-softmax_bias/softmax_bias/Read/ReadVariableOp3softmax_weights/softmax_weights/Read/ReadVariableOp*
dtypes	
2	
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�Bfirst_bias/first_biasBfirst_weights/first_weightsBglobal_stepBsoftmax_bias/softmax_biasBsoftmax_weights/softmax_weights

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*(
_output_shapes
:::::*
dtypes	
2	
L
save/IdentityIdentitysave/RestoreV2*
T0*
_output_shapes
:
\
save/AssignVariableOpAssignVariableOpfirst_bias/first_biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
T0*
_output_shapes
:
f
save/AssignVariableOp_1AssignVariableOpfirst_weights/first_weightssave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
T0	*
_output_shapes
:
V
save/AssignVariableOp_2AssignVariableOpglobal_stepsave/Identity_2*
dtype0	
P
save/Identity_3Identitysave/RestoreV2:3*
T0*
_output_shapes
:
d
save/AssignVariableOp_3AssignVariableOpsoftmax_bias/softmax_biassave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
T0*
_output_shapes
:
j
save/AssignVariableOp_4AssignVariableOpsoftmax_weights/softmax_weightssave/Identity_4*
dtype0
�
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4
�
initNoOp^first_bias/first_bias/Assign#^first_weights/first_weights/Assign^global_step/Assign!^softmax_bias/softmax_bias/Assign'^softmax_weights/softmax_weights/Assign
R
ReadVariableOpReadVariableOpglobal_step*
_output_shapes
: *
dtype0	
I
add_2/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
H
add_2AddV2ReadVariableOpadd_2/y*
T0	*
_output_shapes
: 
E
AssignVariableOpAssignVariableOpglobal_stepadd_2*
dtype0	
g
ReadVariableOp_1ReadVariableOpglobal_step^AssignVariableOp*
_output_shapes
: *
dtype0	
n
groundtruth_input_1Placeholder*#
_output_shapes
:���������*
dtype0	*
shape:���������
|
7cross_entropy_1/sparse_softmax_cross_entropy_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
@cross_entropy_1/sparse_softmax_cross_entropy_loss/xentropy/ShapeShapegroundtruth_input_1*
T0	*
_output_shapes
:*
out_type0
�
Ccross_entropy_1/sparse_softmax_cross_entropy_loss/xentropy/xentropy#SparseSoftmaxCrossEntropyWithLogitsadd_1groundtruth_input_1*
T0*
Tlabels0	*6
_output_shapes$
":���������:���������
�
Tcross_entropy_1/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/shapeConst*
_output_shapes
: *
dtype0*
valueB 
�
Scross_entropy_1/sparse_softmax_cross_entropy_loss/assert_broadcastable/weights/rankConst*
_output_shapes
: *
dtype0*
value	B : 
�
Scross_entropy_1/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/shapeShapeCcross_entropy_1/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
_output_shapes
:*
out_type0
�
Rcross_entropy_1/sparse_softmax_cross_entropy_loss/assert_broadcastable/values/rankConst*
_output_shapes
: *
dtype0*
value	B :
j
bcross_entropy_1/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_successNoOp
�
5cross_entropy_1/sparse_softmax_cross_entropy_loss/MulMulCcross_entropy_1/sparse_softmax_cross_entropy_loss/xentropy/xentropy7cross_entropy_1/sparse_softmax_cross_entropy_loss/Constc^cross_entropy_1/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*#
_output_shapes
:���������
�
9cross_entropy_1/sparse_softmax_cross_entropy_loss/Const_1Constc^cross_entropy_1/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
dtype0*
valueB: 
�
5cross_entropy_1/sparse_softmax_cross_entropy_loss/SumSum5cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul9cross_entropy_1/sparse_softmax_cross_entropy_loss/Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
Ecross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/Equal/yConstc^cross_entropy_1/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *    
�
Ccross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/EqualEqual7cross_entropy_1/sparse_softmax_cross_entropy_loss/ConstEcross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/Equal/y*
T0*
_output_shapes
: *
incompatible_shape_error(
�
Hcross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/zeros_likeConstc^cross_entropy_1/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *    
�
Mcross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeConstc^cross_entropy_1/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB 
�
Mcross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/ones_like/ConstConstc^cross_entropy_1/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
Gcross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/ones_likeFillMcross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/ones_like/ShapeMcross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/ones_like/Const*
T0*
_output_shapes
: *

index_type0
�
Dcross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/SelectSelectCcross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/EqualHcross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/zeros_likeGcross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/ones_like*
T0*
_output_shapes
: 
�
rcross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeConstc^cross_entropy_1/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB 
�
qcross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConstc^cross_entropy_1/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
value	B : 
�
qcross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShapeCcross_entropy_1/sparse_softmax_cross_entropy_loss/xentropy/xentropyc^cross_entropy_1/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:*
out_type0
�
pcross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConstc^cross_entropy_1/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
value	B :
�
�cross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOpc^cross_entropy_1/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success
�
_cross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShapeCcross_entropy_1/sparse_softmax_cross_entropy_loss/xentropy/xentropyc^cross_entropy_1/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success�^cross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:*
out_type0
�
_cross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConstc^cross_entropy_1/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success�^cross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
valueB
 *  �?
�
Ycross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_likeFill_cross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Shape_cross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*#
_output_shapes
:���������*

index_type0
�
Ocross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsMulDcross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/SelectYcross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:���������
�
Ccross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/ConstConstc^cross_entropy_1/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
dtype0*
valueB: 
�
=cross_entropy_1/sparse_softmax_cross_entropy_loss/num_presentSumOcross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/broadcast_weightsCcross_entropy_1/sparse_softmax_cross_entropy_loss/num_present/Const*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
6cross_entropy_1/sparse_softmax_cross_entropy_loss/RankConstc^cross_entropy_1/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
value	B : 
�
=cross_entropy_1/sparse_softmax_cross_entropy_loss/range/startConstc^cross_entropy_1/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
value	B : 
�
=cross_entropy_1/sparse_softmax_cross_entropy_loss/range/deltaConstc^cross_entropy_1/sparse_softmax_cross_entropy_loss/assert_broadcastable/static_scalar_check_success*
_output_shapes
: *
dtype0*
value	B :
�
7cross_entropy_1/sparse_softmax_cross_entropy_loss/rangeRange=cross_entropy_1/sparse_softmax_cross_entropy_loss/range/start6cross_entropy_1/sparse_softmax_cross_entropy_loss/Rank=cross_entropy_1/sparse_softmax_cross_entropy_loss/range/delta*

Tidx0*
_output_shapes
: 
�
7cross_entropy_1/sparse_softmax_cross_entropy_loss/Sum_1Sum5cross_entropy_1/sparse_softmax_cross_entropy_loss/Sum7cross_entropy_1/sparse_softmax_cross_entropy_loss/range*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
7cross_entropy_1/sparse_softmax_cross_entropy_loss/valueDivNoNan7cross_entropy_1/sparse_softmax_cross_entropy_loss/Sum_1=cross_entropy_1/sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
V
learning_rate_input_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
T
gradients_1/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
Z
gradients_1/grad_ys_0Const*
_output_shapes
: *
dtype0*
valueB
 *  �?
u
gradients_1/FillFillgradients_1/Shapegradients_1/grad_ys_0*
T0*
_output_shapes
: *

index_type0
�
Ngradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/ShapeConst*
_output_shapes
: *
dtype0*
valueB 
�
Pgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/Shape_1Const*
_output_shapes
: *
dtype0*
valueB 
�
^gradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgsNgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/ShapePgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Sgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/div_no_nanDivNoNangradients_1/Fill=cross_entropy_1/sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
�
Lgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/SumSumSgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/div_no_nan^gradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
Pgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/ReshapeReshapeLgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/SumNgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
�
Lgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/NegNeg7cross_entropy_1/sparse_softmax_cross_entropy_loss/Sum_1*
T0*
_output_shapes
: 
�
Ugradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/div_no_nan_1DivNoNanLgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/Neg=cross_entropy_1/sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
�
Ugradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/div_no_nan_2DivNoNanUgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/div_no_nan_1=cross_entropy_1/sparse_softmax_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
�
Lgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/mulMulgradients_1/FillUgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/div_no_nan_2*
T0*
_output_shapes
: 
�
Ngradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/Sum_1SumLgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/mul`gradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
�
Rgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/Reshape_1ReshapeNgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/Sum_1Pgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
Ygradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_depsNoOpQ^gradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/ReshapeS^gradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/Reshape_1
�
agradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependencyIdentityPgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/ReshapeZ^gradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*c
_classY
WUloc:@gradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/Reshape*
_output_shapes
: 
�
cgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependency_1IdentityRgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/Reshape_1Z^gradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/tuple/group_deps*
T0*e
_class[
YWloc:@gradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/Reshape_1*
_output_shapes
: 
�
Vgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB 
�
Xgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB 
�
Pgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Sum_1_grad/ReshapeReshapeagradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/value_grad/tuple/control_dependencyXgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Sum_1_grad/Reshape/shape_1*
T0*
Tshape0*
_output_shapes
: 
�
Ngradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Sum_1_grad/ConstConst*
_output_shapes
: *
dtype0*
valueB 
�
Mgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Sum_1_grad/TileTilePgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Sum_1_grad/ReshapeNgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Sum_1_grad/Const*
T0*

Tmultiples0*
_output_shapes
: 
�
Tgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
�
Ngradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeReshapeMgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Sum_1_grad/TileTgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
�
Lgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Sum_grad/ShapeShape5cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul*
T0*
_output_shapes
:*
out_type0
�
Kgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Sum_grad/TileTileNgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Sum_grad/ReshapeLgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Sum_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:���������
�
Lgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeShapeCcross_entropy_1/sparse_softmax_cross_entropy_loss/xentropy/xentropy*
T0*
_output_shapes
:*
out_type0
�
Ngradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1Shape7cross_entropy_1/sparse_softmax_cross_entropy_loss/Const*
T0*
_output_shapes
: *
out_type0
�
\gradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsLgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/ShapeNgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
Jgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/MulMulKgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Sum_grad/Tile7cross_entropy_1/sparse_softmax_cross_entropy_loss/Const*
T0*#
_output_shapes
:���������
�
Jgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/SumSumJgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/Mul\gradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
Ngradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeReshapeJgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/SumLgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
Lgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/Mul_1MulCcross_entropy_1/sparse_softmax_cross_entropy_loss/xentropy/xentropyKgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Sum_grad/Tile*
T0*#
_output_shapes
:���������
�
Lgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1SumLgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/Mul_1^gradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
Pgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1ReshapeLgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/Sum_1Ngradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
�
Wgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_depsNoOpO^gradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeQ^gradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1
�
_gradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentityNgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/ReshapeX^gradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*a
_classW
USloc:@gradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape*#
_output_shapes
:���������
�
agradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependency_1IdentityPgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1X^gradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*c
_classY
WUloc:@gradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/Reshape_1*
_output_shapes
: 
�
gradients_1/zeros_like	ZerosLikeEcross_entropy_1/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*'
_output_shapes
:���������
�
cgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������
�
_gradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims
ExpandDims_gradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/Mul_grad/tuple/control_dependencycgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDims/dim*
T0*

Tdim0*'
_output_shapes
:���������
�
Xgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mulMul_gradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/ExpandDimsEcross_entropy_1/sparse_softmax_cross_entropy_loss/xentropy/xentropy:1*
T0*'
_output_shapes
:���������
b
gradients_1/add_1_grad/ShapeShapeMatMul*
T0*
_output_shapes
:*
out_type0
r
gradients_1/add_1_grad/Shape_1Shapeadd_1/ReadVariableOp*
T0*
_output_shapes
:*
out_type0
�
,gradients_1/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/add_1_grad/Shapegradients_1/add_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_1/add_1_grad/SumSumXgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mul,gradients_1/add_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
gradients_1/add_1_grad/ReshapeReshapegradients_1/add_1_grad/Sumgradients_1/add_1_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
gradients_1/add_1_grad/Sum_1SumXgradients_1/cross_entropy_1/sparse_softmax_cross_entropy_loss/xentropy/xentropy_grad/mul.gradients_1/add_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
 gradients_1/add_1_grad/Reshape_1Reshapegradients_1/add_1_grad/Sum_1gradients_1/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
s
'gradients_1/add_1_grad/tuple/group_depsNoOp^gradients_1/add_1_grad/Reshape!^gradients_1/add_1_grad/Reshape_1
�
/gradients_1/add_1_grad/tuple/control_dependencyIdentitygradients_1/add_1_grad/Reshape(^gradients_1/add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/add_1_grad/Reshape*'
_output_shapes
:���������
�
1gradients_1/add_1_grad/tuple/control_dependency_1Identity gradients_1/add_1_grad/Reshape_1(^gradients_1/add_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/add_1_grad/Reshape_1*
_output_shapes
:
�
gradients_1/MatMul_grad/MatMulMatMul/gradients_1/add_1_grad/tuple/control_dependencyMatMul/ReadVariableOp*
T0*(
_output_shapes
:����������*
transpose_a( *
transpose_b(
�
 gradients_1/MatMul_grad/MatMul_1MatMul	Reshape_1/gradients_1/add_1_grad/tuple/control_dependency*
T0*
_output_shapes
:	�*
transpose_a(*
transpose_b( 
t
(gradients_1/MatMul_grad/tuple/group_depsNoOp^gradients_1/MatMul_grad/MatMul!^gradients_1/MatMul_grad/MatMul_1
�
0gradients_1/MatMul_grad/tuple/control_dependencyIdentitygradients_1/MatMul_grad/MatMul)^gradients_1/MatMul_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/MatMul_grad/MatMul*(
_output_shapes
:����������
�
2gradients_1/MatMul_grad/tuple/control_dependency_1Identity gradients_1/MatMul_grad/MatMul_1)^gradients_1/MatMul_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/MatMul_grad/MatMul_1*
_output_shapes
:	�
k
 gradients_1/Reshape_1_grad/ShapeShapedropout/Mul*
T0*
_output_shapes
:*
out_type0
�
"gradients_1/Reshape_1_grad/ReshapeReshape0gradients_1/MatMul_grad/tuple/control_dependency gradients_1/Reshape_1_grad/Shape*
T0*
Tshape0*/
_output_shapes
:���������
z
"gradients_1/dropout/Mul_grad/ShapeShapedropout/RealDiv*
T0*#
_output_shapes
:���������*
out_type0
y
$gradients_1/dropout/Mul_grad/Shape_1Shapedropout/Cast*
T0*#
_output_shapes
:���������*
out_type0
�
2gradients_1/dropout/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients_1/dropout/Mul_grad/Shape$gradients_1/dropout/Mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
|
 gradients_1/dropout/Mul_grad/MulMul"gradients_1/Reshape_1_grad/Reshapedropout/Cast*
T0*
_output_shapes
:
�
 gradients_1/dropout/Mul_grad/SumSum gradients_1/dropout/Mul_grad/Mul2gradients_1/dropout/Mul_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
$gradients_1/dropout/Mul_grad/ReshapeReshape gradients_1/dropout/Mul_grad/Sum"gradients_1/dropout/Mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:
�
"gradients_1/dropout/Mul_grad/Mul_1Muldropout/RealDiv"gradients_1/Reshape_1_grad/Reshape*
T0*
_output_shapes
:
�
"gradients_1/dropout/Mul_grad/Sum_1Sum"gradients_1/dropout/Mul_grad/Mul_14gradients_1/dropout/Mul_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
&gradients_1/dropout/Mul_grad/Reshape_1Reshape"gradients_1/dropout/Mul_grad/Sum_1$gradients_1/dropout/Mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
�
-gradients_1/dropout/Mul_grad/tuple/group_depsNoOp%^gradients_1/dropout/Mul_grad/Reshape'^gradients_1/dropout/Mul_grad/Reshape_1
�
5gradients_1/dropout/Mul_grad/tuple/control_dependencyIdentity$gradients_1/dropout/Mul_grad/Reshape.^gradients_1/dropout/Mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients_1/dropout/Mul_grad/Reshape*
_output_shapes
:
�
7gradients_1/dropout/Mul_grad/tuple/control_dependency_1Identity&gradients_1/dropout/Mul_grad/Reshape_1.^gradients_1/dropout/Mul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients_1/dropout/Mul_grad/Reshape_1*
_output_shapes
:
j
&gradients_1/dropout/RealDiv_grad/ShapeShapeRelu*
T0*
_output_shapes
:*
out_type0
|
(gradients_1/dropout/RealDiv_grad/Shape_1Shapedropout/Sub*
T0*#
_output_shapes
:���������*
out_type0
�
6gradients_1/dropout/RealDiv_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients_1/dropout/RealDiv_grad/Shape(gradients_1/dropout/RealDiv_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
(gradients_1/dropout/RealDiv_grad/RealDivRealDiv5gradients_1/dropout/Mul_grad/tuple/control_dependencydropout/Sub*
T0*
_output_shapes
:
�
$gradients_1/dropout/RealDiv_grad/SumSum(gradients_1/dropout/RealDiv_grad/RealDiv6gradients_1/dropout/RealDiv_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
(gradients_1/dropout/RealDiv_grad/ReshapeReshape$gradients_1/dropout/RealDiv_grad/Sum&gradients_1/dropout/RealDiv_grad/Shape*
T0*
Tshape0*/
_output_shapes
:���������
k
$gradients_1/dropout/RealDiv_grad/NegNegRelu*
T0*/
_output_shapes
:���������
�
*gradients_1/dropout/RealDiv_grad/RealDiv_1RealDiv$gradients_1/dropout/RealDiv_grad/Negdropout/Sub*
T0*
_output_shapes
:
�
*gradients_1/dropout/RealDiv_grad/RealDiv_2RealDiv*gradients_1/dropout/RealDiv_grad/RealDiv_1dropout/Sub*
T0*
_output_shapes
:
�
$gradients_1/dropout/RealDiv_grad/mulMul5gradients_1/dropout/Mul_grad/tuple/control_dependency*gradients_1/dropout/RealDiv_grad/RealDiv_2*
T0*
_output_shapes
:
�
&gradients_1/dropout/RealDiv_grad/Sum_1Sum$gradients_1/dropout/RealDiv_grad/mul8gradients_1/dropout/RealDiv_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
*gradients_1/dropout/RealDiv_grad/Reshape_1Reshape&gradients_1/dropout/RealDiv_grad/Sum_1(gradients_1/dropout/RealDiv_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
�
1gradients_1/dropout/RealDiv_grad/tuple/group_depsNoOp)^gradients_1/dropout/RealDiv_grad/Reshape+^gradients_1/dropout/RealDiv_grad/Reshape_1
�
9gradients_1/dropout/RealDiv_grad/tuple/control_dependencyIdentity(gradients_1/dropout/RealDiv_grad/Reshape2^gradients_1/dropout/RealDiv_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/dropout/RealDiv_grad/Reshape*/
_output_shapes
:���������
�
;gradients_1/dropout/RealDiv_grad/tuple/control_dependency_1Identity*gradients_1/dropout/RealDiv_grad/Reshape_12^gradients_1/dropout/RealDiv_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/dropout/RealDiv_grad/Reshape_1*
_output_shapes
:
�
gradients_1/Relu_grad/ReluGradReluGrad9gradients_1/dropout/RealDiv_grad/tuple/control_dependencyRelu*
T0*/
_output_shapes
:���������
`
gradients_1/add_grad/ShapeShapeConv2D*
T0*
_output_shapes
:*
out_type0
n
gradients_1/add_grad/Shape_1Shapeadd/ReadVariableOp*
T0*
_output_shapes
:*
out_type0
�
*gradients_1/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/add_grad/Shapegradients_1/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients_1/add_grad/SumSumgradients_1/Relu_grad/ReluGrad*gradients_1/add_grad/BroadcastGradientArgs*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
gradients_1/add_grad/ReshapeReshapegradients_1/add_grad/Sumgradients_1/add_grad/Shape*
T0*
Tshape0*/
_output_shapes
:���������
�
gradients_1/add_grad/Sum_1Sumgradients_1/Relu_grad/ReluGrad,gradients_1/add_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
_output_shapes
:*
	keep_dims( 
�
gradients_1/add_grad/Reshape_1Reshapegradients_1/add_grad/Sum_1gradients_1/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
m
%gradients_1/add_grad/tuple/group_depsNoOp^gradients_1/add_grad/Reshape^gradients_1/add_grad/Reshape_1
�
-gradients_1/add_grad/tuple/control_dependencyIdentitygradients_1/add_grad/Reshape&^gradients_1/add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients_1/add_grad/Reshape*/
_output_shapes
:���������
�
/gradients_1/add_grad/tuple/control_dependency_1Identitygradients_1/add_grad/Reshape_1&^gradients_1/add_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/add_grad/Reshape_1*
_output_shapes
:
�
gradients_1/Conv2D_grad/ShapeNShapeNReshapeConv2D/ReadVariableOp*
N*
T0* 
_output_shapes
::*
out_type0
�
+gradients_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputgradients_1/Conv2D_grad/ShapeNConv2D/ReadVariableOp-gradients_1/add_grad/tuple/control_dependency*
T0*/
_output_shapes
:���������1(*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
�
,gradients_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterReshape gradients_1/Conv2D_grad/ShapeN:1-gradients_1/add_grad/tuple/control_dependency*
T0*&
_output_shapes
:
*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
�
(gradients_1/Conv2D_grad/tuple/group_depsNoOp-^gradients_1/Conv2D_grad/Conv2DBackpropFilter,^gradients_1/Conv2D_grad/Conv2DBackpropInput
�
0gradients_1/Conv2D_grad/tuple/control_dependencyIdentity+gradients_1/Conv2D_grad/Conv2DBackpropInput)^gradients_1/Conv2D_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients_1/Conv2D_grad/Conv2DBackpropInput*/
_output_shapes
:���������1(
�
2gradients_1/Conv2D_grad/tuple/control_dependency_1Identity,gradients_1/Conv2D_grad/Conv2DBackpropFilter)^gradients_1/Conv2D_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients_1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:

�
QGradientDescent_1/update_first_weights/first_weights/ResourceApplyGradientDescentResourceApplyGradientDescentfirst_weights/first_weightslearning_rate_input_12gradients_1/Conv2D_grad/tuple/control_dependency_1*
T0*.
_class$
" loc:@first_weights/first_weights*
use_locking( 
�
KGradientDescent_1/update_first_bias/first_bias/ResourceApplyGradientDescentResourceApplyGradientDescentfirst_bias/first_biaslearning_rate_input_1/gradients_1/add_grad/tuple/control_dependency_1*
T0*(
_class
loc:@first_bias/first_bias*
use_locking( 
�
UGradientDescent_1/update_softmax_weights/softmax_weights/ResourceApplyGradientDescentResourceApplyGradientDescentsoftmax_weights/softmax_weightslearning_rate_input_12gradients_1/MatMul_grad/tuple/control_dependency_1*
T0*2
_class(
&$loc:@softmax_weights/softmax_weights*
use_locking( 
�
OGradientDescent_1/update_softmax_bias/softmax_bias/ResourceApplyGradientDescentResourceApplyGradientDescentsoftmax_bias/softmax_biaslearning_rate_input_11gradients_1/add_1_grad/tuple/control_dependency_1*
T0*,
_class"
 loc:@softmax_bias/softmax_bias*
use_locking( 
�
GradientDescent_1NoOpL^GradientDescent_1/update_first_bias/first_bias/ResourceApplyGradientDescentR^GradientDescent_1/update_first_weights/first_weights/ResourceApplyGradientDescentP^GradientDescent_1/update_softmax_bias/softmax_bias/ResourceApplyGradientDescentV^GradientDescent_1/update_softmax_weights/softmax_weights/ResourceApplyGradientDescent
T
ArgMax_1/dimensionConst*
_output_shapes
: *
dtype0*
value	B :
z
ArgMax_1ArgMaxadd_1ArgMax_1/dimension*
T0*

Tidx0*#
_output_shapes
:���������*
output_type0	
}
Equal_1EqualArgMax_1groundtruth_input_1*
T0	*#
_output_shapes
:���������*
incompatible_shape_error(
d
Cast_2CastEqual_1*

DstT0*

SrcT0
*
Truncate( *#
_output_shapes
:���������
Q
Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
]
Mean_1MeanCast_2Const_1*
T0*

Tidx0*
_output_shapes
: *
	keep_dims( 
[
save_1/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
_output_shapes
: *
dtype0*
shape: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
_output_shapes
: *
dtype0*
shape: 
�
save_1/SaveV2/tensor_namesConst*
_output_shapes
:*
dtype0*�
value�B�Bfirst_bias/first_biasBfirst_weights/first_weightsBglobal_stepBsoftmax_bias/softmax_biasBsoftmax_weights/softmax_weights
o
save_1/SaveV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueBB B B B B 
�
save_1/SaveV2SaveV2save_1/Constsave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices)first_bias/first_bias/Read/ReadVariableOp/first_weights/first_weights/Read/ReadVariableOpglobal_step/Read/ReadVariableOp-softmax_bias/softmax_bias/Read/ReadVariableOp3softmax_weights/softmax_weights/Read/ReadVariableOp*
dtypes	
2	
�
save_1/control_dependencyIdentitysave_1/Const^save_1/SaveV2*
T0*
_class
loc:@save_1/Const*
_output_shapes
: 
�
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�Bfirst_bias/first_biasBfirst_weights/first_weightsBglobal_stepBsoftmax_bias/softmax_biasBsoftmax_weights/softmax_weights
�
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 
�
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*(
_output_shapes
:::::*
dtypes	
2	
P
save_1/IdentityIdentitysave_1/RestoreV2*
T0*
_output_shapes
:
`
save_1/AssignVariableOpAssignVariableOpfirst_bias/first_biassave_1/Identity*
dtype0
T
save_1/Identity_1Identitysave_1/RestoreV2:1*
T0*
_output_shapes
:
j
save_1/AssignVariableOp_1AssignVariableOpfirst_weights/first_weightssave_1/Identity_1*
dtype0
T
save_1/Identity_2Identitysave_1/RestoreV2:2*
T0	*
_output_shapes
:
Z
save_1/AssignVariableOp_2AssignVariableOpglobal_stepsave_1/Identity_2*
dtype0	
T
save_1/Identity_3Identitysave_1/RestoreV2:3*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_3AssignVariableOpsoftmax_bias/softmax_biassave_1/Identity_3*
dtype0
T
save_1/Identity_4Identitysave_1/RestoreV2:4*
T0*
_output_shapes
:
n
save_1/AssignVariableOp_4AssignVariableOpsoftmax_weights/softmax_weightssave_1/Identity_4*
dtype0
�
save_1/restore_allNoOp^save_1/AssignVariableOp^save_1/AssignVariableOp_1^save_1/AssignVariableOp_2^save_1/AssignVariableOp_3^save_1/AssignVariableOp_4
�
init_1NoOp^first_bias/first_bias/Assign#^first_weights/first_weights/Assign^global_step/Assign!^softmax_bias/softmax_bias/Assign'^softmax_weights/softmax_weights/Assign
T
ReadVariableOp_2ReadVariableOpglobal_step*
_output_shapes
: *
dtype0	
I
add_3/yConst*
_output_shapes
: *
dtype0	*
value	B	 R
J
add_3AddV2ReadVariableOp_2add_3/y*
T0	*
_output_shapes
: 
G
AssignVariableOp_1AssignVariableOpglobal_stepadd_3*
dtype0	
i
ReadVariableOp_3ReadVariableOpglobal_step^AssignVariableOp_1*
_output_shapes
: *
dtype0	
K

wav_name_1Placeholder*
_output_shapes
: *
dtype0*
shape: 
?
reader_reader_1ReadFile
wav_name_1*
_output_shapes
: 
~
wav_decoder_1	DecodeWavreader_reader_1*!
_output_shapes
:	�}: *
desired_channels*
desired_samples�}
L
Mul_2/yConst*
_output_shapes
: *
dtype0*
valueB
 * ��F
N
Mul_2Mulwav_decoder_1Mul_2/y*
T0*
_output_shapes
:	�}
^
Cast_3CastMul_2*

DstT0*

SrcT0*
Truncate( *
_output_shapes
:	�}
b
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*
valueB:
���������
a
	Reshape_3ReshapeCast_3Reshape_3/shape*
T0*
Tshape0*
_output_shapes	
:�}
�
AudioMicrofrontend_1AudioMicrofrontend	Reshape_3*
_output_shapes

:1(*

enable_log(*
enable_pcan(*
even_smoothing%���<*
frame_stride*
	gain_bits*
left_context *
lower_band_limit%  �B*
min_signal_remaining%��L=*
num_channels(*
odd_smoothing%��u=*
	out_scale*
out_type0*
pcan_offset%  �B*
pcan_strength%33s?*
right_context *
sample_rate�}*
scale_shift*
smoothing_bits
*
upper_band_limit% `�E*
window_size*
window_step*
zero_padding( 
L
Mul_3/yConst*
_output_shapes
: *
dtype0*
valueB
 *   =
T
Mul_3MulAudioMicrofrontend_1Mul_3/y*
T0*
_output_shapes

:1(
`
Reshape_4/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  
d
	Reshape_4ReshapeMul_3Reshape_4/shape*
T0*
Tshape0*
_output_shapes
:	�
S
dropout_rate_1Placeholder*
_output_shapes
:*
dtype0*
shape:
x
fingerprint_input_1Placeholder*(
_output_shapes
:����������*
dtype0*
shape:����������
h
Reshape_5/shapeConst*
_output_shapes
:*
dtype0*%
valueB"����1   (      
o
	Reshape_5Reshape	Reshape_4Reshape_5/shape*
T0*
Tshape0*&
_output_shapes
:1(
{
Conv2D_1/ReadVariableOpReadVariableOpfirst_weights/first_weights*&
_output_shapes
:
*
dtype0
�
Conv2D_1Conv2D	Reshape_5Conv2D_1/ReadVariableOp*
T0*&
_output_shapes
:*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
f
add_4/ReadVariableOpReadVariableOpfirst_bias/first_bias*
_output_shapes
:*
dtype0
_
add_4AddV2Conv2D_1add_4/ReadVariableOp*
T0*&
_output_shapes
:
F
Relu_1Reluadd_4*
T0*&
_output_shapes
:
`
Reshape_6/shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  
e
	Reshape_6ReshapeRelu_1Reshape_6/shape*
T0*
Tshape0*
_output_shapes
:	�
x
MatMul_1/ReadVariableOpReadVariableOpsoftmax_weights/softmax_weights*
_output_shapes
:	�*
dtype0
�
MatMul_1MatMul	Reshape_6MatMul_1/ReadVariableOp*
T0*
_output_shapes

:*
transpose_a( *
transpose_b( 
j
add_5/ReadVariableOpReadVariableOpsoftmax_bias/softmax_bias*
_output_shapes
:*
dtype0
W
add_5AddV2MatMul_1add_5/ReadVariableOp*
T0*
_output_shapes

:
I
labels_softmaxSoftmaxadd_5*
T0*
_output_shapes

:
[
save_2/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
r
save_2/filenamePlaceholderWithDefaultsave_2/filename/input*
_output_shapes
: *
dtype0*
shape: 
i
save_2/ConstPlaceholderWithDefaultsave_2/filename*
_output_shapes
: *
dtype0*
shape: 
�
save_2/SaveV2/tensor_namesConst*
_output_shapes
:*
dtype0*�
value�B�Bfirst_bias/first_biasBfirst_weights/first_weightsBglobal_stepBsoftmax_bias/softmax_biasBsoftmax_weights/softmax_weights
o
save_2/SaveV2/shape_and_slicesConst*
_output_shapes
:*
dtype0*
valueBB B B B B 
�
save_2/SaveV2SaveV2save_2/Constsave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slices)first_bias/first_bias/Read/ReadVariableOp/first_weights/first_weights/Read/ReadVariableOpglobal_step/Read/ReadVariableOp-softmax_bias/softmax_bias/Read/ReadVariableOp3softmax_weights/softmax_weights/Read/ReadVariableOp*
dtypes	
2	
�
save_2/control_dependencyIdentitysave_2/Const^save_2/SaveV2*
T0*
_class
loc:@save_2/Const*
_output_shapes
: 
�
save_2/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�Bfirst_bias/first_biasBfirst_weights/first_weightsBglobal_stepBsoftmax_bias/softmax_biasBsoftmax_weights/softmax_weights
�
!save_2/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 
�
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices"/device:CPU:0*(
_output_shapes
:::::*
dtypes	
2	
P
save_2/IdentityIdentitysave_2/RestoreV2*
T0*
_output_shapes
:
`
save_2/AssignVariableOpAssignVariableOpfirst_bias/first_biassave_2/Identity*
dtype0
T
save_2/Identity_1Identitysave_2/RestoreV2:1*
T0*
_output_shapes
:
j
save_2/AssignVariableOp_1AssignVariableOpfirst_weights/first_weightssave_2/Identity_1*
dtype0
T
save_2/Identity_2Identitysave_2/RestoreV2:2*
T0	*
_output_shapes
:
Z
save_2/AssignVariableOp_2AssignVariableOpglobal_stepsave_2/Identity_2*
dtype0	
T
save_2/Identity_3Identitysave_2/RestoreV2:3*
T0*
_output_shapes
:
h
save_2/AssignVariableOp_3AssignVariableOpsoftmax_bias/softmax_biassave_2/Identity_3*
dtype0
T
save_2/Identity_4Identitysave_2/RestoreV2:4*
T0*
_output_shapes
:
n
save_2/AssignVariableOp_4AssignVariableOpsoftmax_weights/softmax_weightssave_2/Identity_4*
dtype0
�
save_2/restore_allNoOp^save_2/AssignVariableOp^save_2/AssignVariableOp_1^save_2/AssignVariableOp_2^save_2/AssignVariableOp_3^save_2/AssignVariableOp_4
[
save_3/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
r
save_3/filenamePlaceholderWithDefaultsave_3/filename/input*
_output_shapes
: *
dtype0*
shape: 
i
save_3/ConstPlaceholderWithDefaultsave_3/filename*
_output_shapes
: *
dtype0*
shape: 

save_3/StaticRegexFullMatchStaticRegexFullMatchsave_3/Const"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*
c
save_3/Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part
h
save_3/Const_2Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
�
save_3/SelectSelectsave_3/StaticRegexFullMatchsave_3/Const_1save_3/Const_2"/device:CPU:**
T0*
_output_shapes
: 
}
save_3/StringJoin
StringJoinsave_3/Constsave_3/Select"/device:CPU:**
N*
_output_shapes
: *
	separator 
S
save_3/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
m
save_3/ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
�
save_3/ShardedFilenameShardedFilenamesave_3/StringJoinsave_3/ShardedFilename/shardsave_3/num_shards"/device:CPU:0*
_output_shapes
: 
�
save_3/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�Bfirst_bias/first_biasBfirst_weights/first_weightsBglobal_stepBsoftmax_bias/softmax_biasBsoftmax_weights/softmax_weights
~
save_3/SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 
�
save_3/SaveV2SaveV2save_3/ShardedFilenamesave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slices)first_bias/first_bias/Read/ReadVariableOp/first_weights/first_weights/Read/ReadVariableOpglobal_step/Read/ReadVariableOp-softmax_bias/softmax_bias/Read/ReadVariableOp3softmax_weights/softmax_weights/Read/ReadVariableOp"/device:CPU:0*
dtypes	
2	
�
save_3/control_dependencyIdentitysave_3/ShardedFilename^save_3/SaveV2"/device:CPU:0*
T0*)
_class
loc:@save_3/ShardedFilename*
_output_shapes
: 
�
-save_3/MergeV2Checkpoints/checkpoint_prefixesPacksave_3/ShardedFilename^save_3/control_dependency"/device:CPU:0*
N*
T0*
_output_shapes
:*

axis 
�
save_3/MergeV2CheckpointsMergeV2Checkpoints-save_3/MergeV2Checkpoints/checkpoint_prefixessave_3/Const"/device:CPU:0*
delete_old_dirs(
�
save_3/IdentityIdentitysave_3/Const^save_3/MergeV2Checkpoints^save_3/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 
�
save_3/RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�Bfirst_bias/first_biasBfirst_weights/first_weightsBglobal_stepBsoftmax_bias/softmax_biasBsoftmax_weights/softmax_weights
�
!save_3/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B 
�
save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices"/device:CPU:0*(
_output_shapes
:::::*
dtypes	
2	
R
save_3/Identity_1Identitysave_3/RestoreV2*
T0*
_output_shapes
:
b
save_3/AssignVariableOpAssignVariableOpfirst_bias/first_biassave_3/Identity_1*
dtype0
T
save_3/Identity_2Identitysave_3/RestoreV2:1*
T0*
_output_shapes
:
j
save_3/AssignVariableOp_1AssignVariableOpfirst_weights/first_weightssave_3/Identity_2*
dtype0
T
save_3/Identity_3Identitysave_3/RestoreV2:2*
T0	*
_output_shapes
:
Z
save_3/AssignVariableOp_2AssignVariableOpglobal_stepsave_3/Identity_3*
dtype0	
T
save_3/Identity_4Identitysave_3/RestoreV2:3*
T0*
_output_shapes
:
h
save_3/AssignVariableOp_3AssignVariableOpsoftmax_bias/softmax_biassave_3/Identity_4*
dtype0
T
save_3/Identity_5Identitysave_3/RestoreV2:4*
T0*
_output_shapes
:
n
save_3/AssignVariableOp_4AssignVariableOpsoftmax_weights/softmax_weightssave_3/Identity_5*
dtype0
�
save_3/restore_shardNoOp^save_3/AssignVariableOp^save_3/AssignVariableOp_1^save_3/AssignVariableOp_2^save_3/AssignVariableOp_3^save_3/AssignVariableOp_4
1
save_3/restore_allNoOp^save_3/restore_shard"�B
save_3/Const:0save_3/Identity:0save_3/restore_all (5 @F8"~
global_stepom
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H"�
lossesv
t
7cross_entropy/sparse_softmax_cross_entropy_loss/value:0
9cross_entropy_1/sparse_softmax_cross_entropy_loss/value:0"2
train_op&
$
GradientDescent
GradientDescent_1"�
trainable_variables��
�
first_weights/first_weights:0"first_weights/first_weights/Assign1first_weights/first_weights/Read/ReadVariableOp:0(2:first_weights/first_weights/Initializer/truncated_normal:08
�
first_bias/first_bias:0first_bias/first_bias/Assign+first_bias/first_bias/Read/ReadVariableOp:0(2)first_bias/first_bias/Initializer/zeros:08
�
!softmax_weights/softmax_weights:0&softmax_weights/softmax_weights/Assign5softmax_weights/softmax_weights/Read/ReadVariableOp:0(2>softmax_weights/softmax_weights/Initializer/truncated_normal:08
�
softmax_bias/softmax_bias:0 softmax_bias/softmax_bias/Assign/softmax_bias/softmax_bias/Read/ReadVariableOp:0(2-softmax_bias/softmax_bias/Initializer/zeros:08"�
	variables��
�
first_weights/first_weights:0"first_weights/first_weights/Assign1first_weights/first_weights/Read/ReadVariableOp:0(2:first_weights/first_weights/Initializer/truncated_normal:08
�
first_bias/first_bias:0first_bias/first_bias/Assign+first_bias/first_bias/Read/ReadVariableOp:0(2)first_bias/first_bias/Initializer/zeros:08
�
!softmax_weights/softmax_weights:0&softmax_weights/softmax_weights/Assign5softmax_weights/softmax_weights/Read/ReadVariableOp:0(2>softmax_weights/softmax_weights/Initializer/truncated_normal:08
�
softmax_bias/softmax_bias:0 softmax_bias/softmax_bias/Assign/softmax_bias/softmax_bias/Read/ReadVariableOp:0(2-softmax_bias/softmax_bias/Initializer/zeros:08
k
global_step:0global_step/Assign!global_step/Read/ReadVariableOp:0(2global_step/Initializer/zeros:0H*~
serving_defaultk
#
input
Reshape_4:0	�(
output
labels_softmax:0tensorflow/serving/predict