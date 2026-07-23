.class public final Lcom/facebook/ads/redexgen/X/M9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/M8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/M8;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1375
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "YJvayVN4kVOLxlDJWGwOCabHg1Fqt8we"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "dXRRKrs9Ij7YmQRV4DOVJ1oKXH0uRxvN"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "n5YXMgelgzgI9ER8zULhKnxSUvKWD7FQ"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "MjcTDZ9vVz9cB8bZ6OPiFlfIoErQXBVk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "8uXe0M8gsMoVnVy8oufardLoqnsq8OG9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "SOq47sVgQRT9DF7sN8qUq9bi0IFpLSH7"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "zaXV1JxsQyTBZsc16bKnJvrmUTnQXACV"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "RKyyTAGKUR4fF8w9wvyslT4CD7IDkjm1"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/M9;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/M8;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 51136
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/M9;->A00:Lcom/facebook/ads/redexgen/X/M8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADB(Z)V
    .locals 4

    .line 51137
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A00:Lcom/facebook/ads/redexgen/X/M8;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/M8;->A0B(Lcom/facebook/ads/redexgen/X/M8;Z)V

    .line 51138
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A00:Lcom/facebook/ads/redexgen/X/M8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M8;->A0E(Lcom/facebook/ads/redexgen/X/M8;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A00:Lcom/facebook/ads/redexgen/X/M8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M8;->A02(Lcom/facebook/ads/redexgen/X/M8;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51139
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A00:Lcom/facebook/ads/redexgen/X/M8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M8;->A02(Lcom/facebook/ads/redexgen/X/M8;)Landroid/widget/ImageView;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/M9;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x39

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/M9;->A01:[Ljava/lang/String;

    const-string v1, "1z8fFmuPWvqo0Almmab7pMFz1UcwKmNW"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "wk5V7hrE3V1AjvcaWXTFKexyEZN6L03E"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 51140
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A00:Lcom/facebook/ads/redexgen/X/M8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M8;->A02(Lcom/facebook/ads/redexgen/X/M8;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 51141
    :cond_1
    return-void

    .line 51142
    :cond_2
    const v1, 0x3e99999a    # 0.3f

    goto :goto_0
.end method

.method public final ADx(Z)V
    .locals 2

    .line 51143
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A00:Lcom/facebook/ads/redexgen/X/M8;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/M8;->A0B(Lcom/facebook/ads/redexgen/X/M8;Z)V

    .line 51144
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A00:Lcom/facebook/ads/redexgen/X/M8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M8;->A0E(Lcom/facebook/ads/redexgen/X/M8;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A00:Lcom/facebook/ads/redexgen/X/M8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M8;->A03(Lcom/facebook/ads/redexgen/X/M8;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51145
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A00:Lcom/facebook/ads/redexgen/X/M8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M8;->A03(Lcom/facebook/ads/redexgen/X/M8;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 51146
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M9;->A00:Lcom/facebook/ads/redexgen/X/M8;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M8;->A03(Lcom/facebook/ads/redexgen/X/M8;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 51147
    :cond_0
    return-void

    .line 51148
    :cond_1
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0
.end method
