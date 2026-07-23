.class public final Lcom/facebook/ads/redexgen/X/Ma;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/eG;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/MW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlayableAdsViewListenerImpl"
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/MW;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1398
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "eg4OuzmozbdBw8OpfnEQ9S5WXV0sj4Z8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "rcCmLv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "J9fwVwM4lsi34p"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "AlJIDEMCKinwW9CsIljPKEg77fEpV28V"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "eGLouwRxqegMv8vZbxB0WI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "SMn3POGOAwCpVf"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "x8sqAERQ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "K7z6bhBLHSjzf8oEEyEGbL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ma;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ma;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/MW;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 52156
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ma;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/MW;Lcom/facebook/ads/redexgen/X/Mm;)V
    .locals 0

    .line 52157
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ma;-><init>(Lcom/facebook/ads/redexgen/X/MW;)V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ma;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x72

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ma;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x16t
        -0x18t
        -0x26t
        -0x19t
        -0x28t
        -0x1ft
        -0x22t
        -0x28t
        -0x20t
    .end array-data
.end method


# virtual methods
.method public final ADX()V
    .locals 5

    .line 52158
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Ma;->A00:Lcom/facebook/ads/redexgen/X/MW;

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x9

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ma;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/MW;->A0U(Lcom/facebook/ads/redexgen/X/MW;ZLjava/lang/String;)V

    .line 52159
    return-void
.end method

.method public final AEA()V
    .locals 0

    .line 52160
    return-void
.end method

.method public final AEh()V
    .locals 4

    .line 52161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ma;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A00(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/No;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/No;->A0b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52162
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ma;->A00:Lcom/facebook/ads/redexgen/X/MW;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ma;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ma;->A02:[Ljava/lang/String;

    const-string v1, "uysARHPfhmw6aS"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/MW;->A0B(Lcom/facebook/ads/redexgen/X/MW;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 52163
    :goto_0
    return-void

    .line 52164
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ma;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A0S(Lcom/facebook/ads/redexgen/X/MW;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AFQ()V
    .locals 2

    .line 52165
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ma;->A00:Lcom/facebook/ads/redexgen/X/MW;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MW;->AFA(Z)V

    .line 52166
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ma;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A07(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/eI;

    move-result-object v1

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/eI;->A0E(I)V

    .line 52167
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ma;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A01(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/gi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/gi;->A0F()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Lt;->AFH()V

    .line 52168
    return-void
.end method

.method public final AGg()V
    .locals 2

    .line 52169
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ma;->A00:Lcom/facebook/ads/redexgen/X/MW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MW;->A03(Lcom/facebook/ads/redexgen/X/MW;)Lcom/facebook/ads/redexgen/X/Yh;

    move-result-object v1

    const/16 v0, 0xf

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Yh;->ADJ(I)V

    .line 52170
    return-void
.end method
