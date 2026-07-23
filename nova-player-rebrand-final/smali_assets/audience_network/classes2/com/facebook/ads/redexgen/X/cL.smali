.class public final Lcom/facebook/ads/redexgen/X/cL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/KE;->A0f(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/KE;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2671
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "p7naAKHB4xLvoRE2lSSuhG1PZJd5v7nu"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "WvtGE9IzO9nFNtvFFTJqUhWwvt66h6nL"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "VCCKY7KSUUOD77sUX9kuHB9VbhmabzsO"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "cnwdl7GMxNwVad4p0Oh4XJmd2VWgvA9c"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "WrV0BeHEM3l4rmxeVHIasZWQtGmyI4N8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "o1aT8vujxCaaiLUwRZbljoToDOgVH3wd"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "xRriwdEy6j865I4a7V8cGrqA6QrsYUim"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "9xiHe0uHFaNvIWsoa90uuUt6pGUbqrnm"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/cL;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/cL;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/KE;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 79136
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cL;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/cL;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/cL;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/cL;->A02:[Ljava/lang/String;

    const-string v1, "QNYUYdnqHgiLJjFZUPg17w9dElY9CMJL"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "MmMVh7wO8RKpCmRa2XK3GpXBkp039CBt"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_2

    aget-byte v0, v3, p0

    sub-int/2addr v0, p2

    add-int/lit8 p1, v0, -0x79

    sget-object v2, Lcom/facebook/ads/redexgen/X/cL;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/cL;->A02:[Ljava/lang/String;

    const-string v1, "upZvC29S1gYfpKTic3DC7WgaDELdGVOI"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "622S9DNbpY0TGJih4dXFXUlLvodGjwfO"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    int-to-byte v0, p1

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x23

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/cL;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x17t
        0x15t
        0x7t
        0x14t
        0x1t
        0x5t
        0xet
        0xbt
        0x5t
        0xdt
        0x1t
        0xbt
        0x3t
        0x4t
        0x44t
        0x42t
        0x34t
        0x41t
        0x2et
        0x3at
        0x34t
        0x48t
        0x3ft
        0x30t
        0x33t
        0x2et
        0x32t
        0x3bt
        0x38t
        0x32t
        0x3at
        0x2et
        0x38t
        0x30t
        0x31t
    .end array-data
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 79137
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 79138
    :cond_0
    :goto_0
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/cL;->A02:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/cL;->A02:[Ljava/lang/String;

    const-string v1, "ebvcteC2Y0dTtDk82YoZqGoSTVtPrEa5"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "fbe5xbn5zq5FbTQSbq0ElFkb30D7M3tE"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return v3

    .line 79139
    :pswitch_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cL;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A05(Lcom/facebook/ads/redexgen/X/KE;)I

    .line 79140
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cL;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0r(Lcom/facebook/ads/redexgen/X/KE;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cL;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A04(Lcom/facebook/ads/redexgen/X/KE;)I

    move-result v1

    const/4 v0, 0x5

    if-lt v1, v0, :cond_0

    .line 79141
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cL;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/KE;->A0w(Lcom/facebook/ads/redexgen/X/KE;Z)Z

    .line 79142
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cL;->A00:Lcom/facebook/ads/redexgen/X/KE;

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cL;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0b(Lcom/facebook/ads/redexgen/X/KE;Ljava/lang/String;)V

    goto :goto_0

    .line 79143
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cL;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A0q(Lcom/facebook/ads/redexgen/X/KE;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cL;->A00:Lcom/facebook/ads/redexgen/X/KE;

    .line 79144
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A08(Lcom/facebook/ads/redexgen/X/KE;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cL;->A00:Lcom/facebook/ads/redexgen/X/KE;

    .line 79145
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KE;->A08(Lcom/facebook/ads/redexgen/X/KE;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79146
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cL;->A00:Lcom/facebook/ads/redexgen/X/KE;

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/KE;->A0v(Lcom/facebook/ads/redexgen/X/KE;Z)Z

    .line 79147
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/cL;->A00:Lcom/facebook/ads/redexgen/X/KE;

    sget-object v2, Lcom/facebook/ads/redexgen/X/cL;->A02:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/cL;->A02:[Ljava/lang/String;

    const-string v1, "y8iXjV8I9QfHTyCtOipg4lT6AE7AaFQc"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "XU6FCJR6sW2kminM5RICnJzgT3NrL5su"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/16 v2, 0xe

    const/16 v1, 0x15

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/cL;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/KE;->A0b(Lcom/facebook/ads/redexgen/X/KE;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79148
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
