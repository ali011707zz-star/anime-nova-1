.class final Lcom/google/ads/interactivemedia/v3/internal/zzxp;
.super Lcom/google/ads/interactivemedia/v3/internal/zzxs;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# instance fields
.field final synthetic zza:Ljava/lang/reflect/Method;

.field final synthetic zzb:I


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxp;->zza:Ljava/lang/reflect/Method;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxp;->zzb:I

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzxs;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzxs;->zzb(Ljava/lang/Class;)V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxp;->zzb:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object v0, v1, p1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzxp;->zza:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
