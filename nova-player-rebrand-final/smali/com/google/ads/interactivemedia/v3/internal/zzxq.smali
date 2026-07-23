.class final Lcom/google/ads/interactivemedia/v3/internal/zzxq;
.super Lcom/google/ads/interactivemedia/v3/internal/zzxs;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field final synthetic zza:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxq;->zza:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzxs;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzxs;->zzb(Ljava/lang/Class;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-class p1, Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxq;->zza:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
