.class public abstract synthetic Lcom/facebook/ads/redexgen/X/MX;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1395
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kAVLkaOPTenDjNStg3AqGnsJ6mUxlh"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "fdMZ5FC2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "RcZfMO7G0A"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "D26EIYlb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "rGLz93weyR"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "QBfYKUrTqNlMcNacns9hu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/MX;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/5i;)Ljava/lang/String;
    .locals 3

    .line 52138
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5i;->A08:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/5i;->A08:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/5i;->A06:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/ads/redexgen/X/MX;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/MX;->A00:[Ljava/lang/String;

    const-string v1, "qSUHhmHVZn4hNc1KXxuwz"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
