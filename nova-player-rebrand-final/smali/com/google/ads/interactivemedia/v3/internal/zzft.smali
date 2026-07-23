.class final synthetic Lcom/google/ads/interactivemedia/v3/internal/zzft;
.super Ljava/lang/Object;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final synthetic zza:Lcom/google/ads/interactivemedia/v3/internal/zzfw;

.field private final synthetic zzb:Lcom/google/ads/interactivemedia/v3/internal/zzfk;


# direct methods
.method synthetic constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zzfw;Lcom/google/ads/interactivemedia/v3/internal/zzfk;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzft;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzfw;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zzft;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzfk;

    return-void
.end method


# virtual methods
.method public final synthetic onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzft;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzfw;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzft;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzfk;

    invoke-virtual {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzfw;->zzi(Lcom/google/ads/interactivemedia/v3/internal/zzfk;Ljava/lang/Exception;)V

    return-void
.end method
