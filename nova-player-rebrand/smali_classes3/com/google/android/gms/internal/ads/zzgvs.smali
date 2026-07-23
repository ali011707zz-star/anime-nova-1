.class final Lcom/google/android/gms/internal/ads/zzgvs;
.super Lcom/google/android/gms/internal/ads/zzgvr;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgvt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgvt;I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvs;->zza:Lcom/google/android/gms/internal/ads/zzgvt;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgvr;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzgva;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvs;->zza:Lcom/google/android/gms/internal/ads/zzgvt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgvt;->zza()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgvq;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgvq;-><init>(I)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgvv;

    .line 2
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzgvv;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzgru;)V

    return-object v2
.end method
