.class public abstract Lcom/facebook/ads/redexgen/X/qF;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3478
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "FG90yhnY"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Fg00hxTyFwbSbV5qElnuAHdRH"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "F7szGhh7bkTqx6RqK9HmW25Ji"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "4gQeHDrOc3ECdjXRE4NGt0cQ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "iRqlBTY0hhWmfLTyeZ4nJZNVjmZYbhdZ"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "8R8jPMkkyIigqcNMItKYdJPkdnSzBcEQ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "JSn0RfcylvOy4kW3a69oJkkIYOHW2cFh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "St5t4kZM"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/qF;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A00()Ljava/lang/Object;
    .locals 4
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 105289
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/qF;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/qF;->A00:[Ljava/lang/String;

    const-string v1, "ZbAmlXOp"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "dgz0zpHy"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v3
.end method

.method public static A01(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Lcom/google/common/collect/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 105290
    .local p0, "t":Ljava/lang/Object;, "TT;"
    return-object p0
.end method
