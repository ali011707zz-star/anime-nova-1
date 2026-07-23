.class final Lcom/google/android/gms/internal/ads/zzxe;
.super Lcom/google/android/gms/internal/ads/zzafj;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzxq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzxq;Lcom/google/android/gms/internal/ads/zzafy;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxe;->zza:Lcom/google/android/gms/internal/ads/zzxq;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzafj;-><init>(Lcom/google/android/gms/internal/ads/zzafy;)V

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxe;->zza:Lcom/google/android/gms/internal/ads/zzxq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxq;->zzQ()J

    move-result-wide v0

    return-wide v0
.end method
