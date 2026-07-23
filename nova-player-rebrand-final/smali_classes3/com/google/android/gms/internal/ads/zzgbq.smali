.class final Lcom/google/android/gms/internal/ads/zzgbq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikp;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgbr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgbr;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbq;->zza:Lcom/google/android/gms/internal/ads/zzgbr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbq;->zza:Lcom/google/android/gms/internal/ads/zzgbr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgbr;->zzb()Lcom/google/android/gms/internal/ads/zzgbl;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgbr;->zzc()Lcom/google/android/gms/internal/ads/zzgbr;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzgbu;-><init>(Lcom/google/android/gms/internal/ads/zzgbl;Lcom/google/android/gms/internal/ads/zzgbr;[B)V

    return-object v1
.end method
