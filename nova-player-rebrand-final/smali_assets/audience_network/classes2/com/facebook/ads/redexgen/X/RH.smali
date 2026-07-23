.class public final Lcom/facebook/ads/redexgen/X/RH;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/androidx/support/v7/widget/RecyclerView$State$LayoutState;
    }
.end annotation


# static fields
.field public static A0H:[B


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:I

.field public A08:J

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public A0C:Z

.field public A0D:Z

.field public A0E:Z

.field public A0F:I

.field public A0G:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/RH;->A02()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61781
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0F:I

    .line 61782
    const/4 v1, 0x0

    iput v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:I

    .line 61783
    iput v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A00:I

    .line 61784
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A04:I

    .line 61785
    iput v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A03:I

    .line 61786
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A0D:Z

    .line 61787
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A09:Z

    .line 61788
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A0E:Z

    .line 61789
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A0A:Z

    .line 61790
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Z

    .line 61791
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A0B:Z

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/RH;I)I
    .locals 0

    .line 61792
    iput p1, p0, Lcom/facebook/ads/redexgen/X/RH;->A0F:I

    return p1
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/RH;->A0H:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x18

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

    const/16 v0, 0xf4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/RH;->A0H:[B

    return-void

    :array_0
    .array-data 1
        0x4bt
        0x9t
        0x1et
        0x1ft
        0x4bt
        0x2t
        0x1ft
        0x4bt
        0x2t
        0x18t
        0x4bt
        0x16t
        0x1at
        0x57t
        0x7et
        0x5bt
        0x4et
        0x5bt
        0x7t
        0x4et
        0x42t
        0xft
        0x26t
        0x7t
        0xet
        0x7t
        0x16t
        0x7t
        0x6t
        0x2bt
        0xct
        0x14t
        0xbt
        0x11t
        0xbt
        0x0t
        0xet
        0x7t
        0x2bt
        0x16t
        0x7t
        0xft
        0x21t
        0xdt
        0x17t
        0xct
        0x16t
        0x31t
        0xbt
        0xct
        0x1t
        0x7t
        0x32t
        0x10t
        0x7t
        0x14t
        0xbt
        0xdt
        0x17t
        0x11t
        0x2et
        0x3t
        0x1bt
        0xdt
        0x17t
        0x16t
        0x5ft
        0x21t
        0x2dt
        0x60t
        0x44t
        0x63t
        0x5dt
        0x7ft
        0x68t
        0x41t
        0x6ct
        0x74t
        0x62t
        0x78t
        0x79t
        0x30t
        0x3ct
        0x30t
        0x7dt
        0x59t
        0x64t
        0x75t
        0x7dt
        0x53t
        0x7ft
        0x65t
        0x7et
        0x64t
        0x2dt
        0x3t
        0xft
        0x42t
        0x7ft
        0x5dt
        0x4at
        0x59t
        0x46t
        0x40t
        0x5at
        0x5ct
        0x63t
        0x4et
        0x56t
        0x40t
        0x5at
        0x5bt
        0x66t
        0x5bt
        0x4at
        0x42t
        0x6ct
        0x40t
        0x5at
        0x41t
        0x5bt
        0x12t
        0x56t
        0x5at
        0x17t
        0x28t
        0xft
        0x14t
        0x2at
        0x8t
        0x1ft
        0x1et
        0x13t
        0x19t
        0xet
        0x13t
        0xct
        0x1ft
        0x3bt
        0x14t
        0x13t
        0x17t
        0x1bt
        0xet
        0x13t
        0x15t
        0x14t
        0x9t
        0x47t
        0x29t
        0x25t
        0x68t
        0x57t
        0x70t
        0x6bt
        0x56t
        0x6ct
        0x68t
        0x75t
        0x69t
        0x60t
        0x44t
        0x6bt
        0x6ct
        0x68t
        0x64t
        0x71t
        0x6ct
        0x6at
        0x6bt
        0x76t
        0x38t
        0x11t
        0x1dt
        0x50t
        0x6et
        0x49t
        0x4ft
        0x48t
        0x5et
        0x49t
        0x48t
        0x4ft
        0x58t
        0x7et
        0x55t
        0x5ct
        0x53t
        0x5at
        0x58t
        0x59t
        0x0t
        0x78t
        0x55t
        0x4dt
        0x5bt
        0x41t
        0x40t
        0x14t
        0x47t
        0x40t
        0x55t
        0x40t
        0x51t
        0x14t
        0x47t
        0x5ct
        0x5bt
        0x41t
        0x58t
        0x50t
        0x14t
        0x56t
        0x51t
        0x14t
        0x5bt
        0x5at
        0x51t
        0x14t
        0x5bt
        0x52t
        0x14t
        0x6bt
        0x4ct
        0x59t
        0x4ct
        0x5dt
        0x43t
        0x55t
        0x6ct
        0x59t
        0x4at
        0x5ft
        0x5dt
        0x4ct
        0x68t
        0x57t
        0x4bt
        0x51t
        0x4ct
        0x51t
        0x57t
        0x56t
        0x5t
    .end array-data
.end method


# virtual methods
.method public final A03()I
    .locals 2

    .line 61793
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A09:Z

    if-eqz v0, :cond_0

    .line 61794
    iget v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A00:I

    sub-int/2addr v1, v0

    .line 61795
    :goto_0
    return v1

    .line 61796
    :cond_0
    iget v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A03:I

    goto :goto_0
.end method

.method public final A04(I)V
    .locals 4

    .line 61797
    iget v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A04:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 61798
    return-void

    .line 61799
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xc0

    const/16 v1, 0x1e

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 61800
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xb

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A04:I

    .line 61801
    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Qq;)V
    .locals 1

    .line 61802
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A04:I

    .line 61803
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Qq;->A0B()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A03:I

    .line 61804
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A09:Z

    .line 61805
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0E:Z

    .line 61806
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0A:Z

    .line 61807
    return-void
.end method

.method public final A06()Z
    .locals 2

    .line 61808
    iget v1, p0, Lcom/facebook/ads/redexgen/X/RH;->A0F:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A07()Z
    .locals 1

    .line 61809
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A09:Z

    return v0
.end method

.method public final A08()Z
    .locals 1

    .line 61810
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0B:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 61811
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xde

    const/16 v1, 0x16

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0F:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xb

    const/16 v1, 0x8

    const/16 v0, 0x22

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0G:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x52

    const/16 v1, 0xd

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A03:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x5f

    const/16 v1, 0x1b

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A05:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x13

    const/16 v1, 0x30

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A00:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xac

    const/16 v1, 0x14

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0D:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x43

    const/16 v1, 0xf

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A09:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x95

    const/16 v1, 0x17

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0C:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x7a

    const/16 v1, 0x1b

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/RH;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/RH;->A0B:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
