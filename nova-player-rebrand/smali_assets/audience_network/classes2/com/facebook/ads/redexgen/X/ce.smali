.class public final Lcom/facebook/ads/redexgen/X/ce;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ji;->A0m(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ji;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2677
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "0HVxtLG0sPkx2"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "hiZzr77KokQTc"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "mNnSSdkwXzrOg41hebGrtMF8fEOYdjGE"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "NiiVAR3ay3HziijWMkU57MyJi0qOk8bf"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "5RCf0Yx637qOFKYGhhAOV12LnRlJgv3P"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3PZq2jvav8U89"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "SINF4Npt4bG7GbW3rji"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "p0cbgO4lXEkOYy0C0Gpe"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ce;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ce;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ji;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 79324
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ce;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/ce;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length v0, v3

    if-ge p0, v0, :cond_1

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 p1, v0, -0x27

    sget-object v2, Lcom/facebook/ads/redexgen/X/ce;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/ce;->A02:[Ljava/lang/String;

    const-string v1, "15sr1U6GzUIP4MnHZRSc"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "N9mozJJ8LQfhA"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    int-to-byte v0, p1

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x23

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ce;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x53t
        -0x55t
        -0x63t
        -0x56t
        -0x69t
        -0x65t
        -0x5ct
        -0x5ft
        -0x65t
        -0x5dt
        -0x69t
        -0x5ft
        -0x67t
        -0x66t
        -0x43t
        -0x45t
        -0x53t
        -0x46t
        -0x59t
        -0x4dt
        -0x53t
        -0x3ft
        -0x48t
        -0x57t
        -0x54t
        -0x59t
        -0x55t
        -0x4ct
        -0x4ft
        -0x55t
        -0x4dt
        -0x59t
        -0x4ft
        -0x57t
        -0x56t
    .end array-data
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 79325
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 79326
    :cond_0
    :goto_0
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/ce;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x36

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 79327
    :pswitch_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ce;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    sget-object v2, Lcom/facebook/ads/redexgen/X/ce;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/ce;->A02:[Ljava/lang/String;

    const-string v1, "OcZWYNEqCaLP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Ji;->A04(Lcom/facebook/ads/redexgen/X/Ji;)I

    .line 79328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ce;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A13(Lcom/facebook/ads/redexgen/X/Ji;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ce;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A03(Lcom/facebook/ads/redexgen/X/Ji;)I

    move-result v1

    const/4 v0, 0x5

    if-lt v1, v0, :cond_0

    .line 79329
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ce;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Ji;->A17(Lcom/facebook/ads/redexgen/X/Ji;Z)Z

    .line 79330
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ce;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ce;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0i(Lcom/facebook/ads/redexgen/X/Ji;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/ce;->A02:[Ljava/lang/String;

    const-string v1, "icFIHzt0T1qa8"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "30YVfIVk012ko"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Ji;->A04(Lcom/facebook/ads/redexgen/X/Ji;)I

    .line 79331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ce;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A13(Lcom/facebook/ads/redexgen/X/Ji;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 79332
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ce;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A12(Lcom/facebook/ads/redexgen/X/Ji;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ce;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    .line 79333
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A07(Lcom/facebook/ads/redexgen/X/Ji;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ce;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    .line 79334
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ji;->A07(Lcom/facebook/ads/redexgen/X/Ji;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79335
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ce;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/Ji;->A16(Lcom/facebook/ads/redexgen/X/Ji;Z)Z

    .line 79336
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ce;->A00:Lcom/facebook/ads/redexgen/X/Ji;

    const/16 v2, 0xe

    const/16 v1, 0x15

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ce;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Ji;->A0i(Lcom/facebook/ads/redexgen/X/Ji;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79337
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/ce;->A02:[Ljava/lang/String;

    const-string v1, "w8TKL5U61DrXWGWK9GXi8K1kZSuhi8qi"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
