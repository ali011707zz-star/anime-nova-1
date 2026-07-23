.class public final Lcom/google/ads/interactivemedia/v3/internal/zzsn;
.super Lcom/google/ads/interactivemedia/v3/internal/zzso;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "#"

    const-string v1, "+"

    const-string v2, "[+-]?(?:NaN|Infinity|(?:\\d+#(?:\\.\\d*#)?|\\.\\d+#)(?:[eE][+-]?\\d+#)?[fFdD]?|0[xX](?:[0-9a-fA-F]+#(?:\\.[0-9a-fA-F]*#)?|\\.[0-9a-fA-F]+#)[pP][+-]?\\d+#[fFdD]?)"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    return-void
.end method
