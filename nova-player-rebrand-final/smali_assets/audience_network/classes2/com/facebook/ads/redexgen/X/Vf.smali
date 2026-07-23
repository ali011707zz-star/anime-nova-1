.class public final enum Lcom/facebook/ads/redexgen/X/Vf;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/Vf;",
        ">;"
    }
.end annotation


# static fields
.field public static A00:[B

.field public static A01:[Ljava/lang/String;

.field public static final synthetic A02:[Lcom/facebook/ads/redexgen/X/Vf;

.field public static final enum A03:Lcom/facebook/ads/redexgen/X/Vf;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/Vf;

.field public static final enum A05:Lcom/facebook/ads/redexgen/X/Vf;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2080
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "t11qfTcdRX3vtzWg9o3D7yzOQIlsgekI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "6i20agDhmSdy9vSyuA65WoFMQBMnYQqu"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "rdyvRl0mnrLy9iBwCAplKJJzDaMabc0M"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SOZt7VgRETJYcVg4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "xbstiP5KKiAzncux"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VTcuBCbEWMb14OGNQVtfuGUmCLIRmz1L"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "NW0LuK6Vb9eH6jcO6lyYeFn7KSHSxynw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "5brGPIOfpSxIScBaveghLVMlb1271YeU"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vf;->A01:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vf;->A02()V

    const/4 v2, 0x0

    const/4 v1, 0x7

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vf;->A01(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vf;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Vf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vf;->A03:Lcom/facebook/ads/redexgen/X/Vf;

    .line 2081
    const/16 v2, 0xa

    const/4 v1, 0x2

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vf;->A01(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vf;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Vf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vf;->A05:Lcom/facebook/ads/redexgen/X/Vf;

    .line 2082
    const/4 v2, 0x7

    const/4 v1, 0x3

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vf;->A01(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x2

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vf;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Vf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vf;->A04:Lcom/facebook/ads/redexgen/X/Vf;

    .line 2083
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vf;->A03()[Lcom/facebook/ads/redexgen/X/Vf;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vf;->A02:[Lcom/facebook/ads/redexgen/X/Vf;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 69571
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/Vf;)Lcom/facebook/ads/VideoAutoplayBehavior;
    .locals 3
    .param p0    # Lcom/facebook/ads/redexgen/X/Vf;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 69572
    if-nez p0, :cond_0

    .line 69573
    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->DEFAULT:Lcom/facebook/ads/VideoAutoplayBehavior;

    return-object v0

    .line 69574
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Vf;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 69575
    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->DEFAULT:Lcom/facebook/ads/VideoAutoplayBehavior;

    return-object v0

    .line 69576
    :pswitch_0
    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->OFF:Lcom/facebook/ads/VideoAutoplayBehavior;

    return-object v0

    .line 69577
    :pswitch_1
    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->ON:Lcom/facebook/ads/VideoAutoplayBehavior;

    return-object v0

    .line 69578
    :pswitch_2
    sget-object p0, Lcom/facebook/ads/VideoAutoplayBehavior;->DEFAULT:Lcom/facebook/ads/VideoAutoplayBehavior;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vf;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x75

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vf;->A01:[Ljava/lang/String;

    const-string v1, "tGhoRPzzdwkU9rBMhrkq51QPgJKMKCG7"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "oLzw2E9OShYSASB843fXRAiyIcSfpUGD"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vf;->A00:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x21

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Vf;->A00:[B

    return-void

    :array_0
    .array-data 1
        0x58t
        0x59t
        0x5at
        0x5dt
        0x49t
        0x50t
        0x48t
        0x62t
        0x6bt
        0x6bt
        0x2t
        0x3t
    .end array-data
.end method

.method public static synthetic A03()[Lcom/facebook/ads/redexgen/X/Vf;
    .locals 4

    .line 69579
    const/4 v0, 0x3

    new-array v3, v0, [Lcom/facebook/ads/redexgen/X/Vf;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vf;->A03:Lcom/facebook/ads/redexgen/X/Vf;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vf;->A01:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Vf;->A01:[Ljava/lang/String;

    const-string v1, "zoiTRupMudK7uDXw"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "VFYrxWbIb3tlnjHn"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vf;->A05:Lcom/facebook/ads/redexgen/X/Vf;

    const/4 v0, 0x1

    aput-object v1, v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vf;->A04:Lcom/facebook/ads/redexgen/X/Vf;

    const/4 v0, 0x2

    aput-object v1, v3, v0

    return-object v3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Vf;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 69580
    const-class v0, Lcom/facebook/ads/redexgen/X/Vf;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Vf;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/Vf;
    .locals 1

    .line 69581
    sget-object v0, Lcom/facebook/ads/redexgen/X/Vf;->A02:[Lcom/facebook/ads/redexgen/X/Vf;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/Vf;

    return-object v0
.end method
