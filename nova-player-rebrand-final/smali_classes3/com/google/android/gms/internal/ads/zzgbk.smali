.class final Lcom/google/android/gms/internal/ads/zzgbk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikp;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgbl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgbl;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbk;->zza:Lcom/google/android/gms/internal/ads/zzgbl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbk;->zza:Lcom/google/android/gms/internal/ads/zzgbl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgbs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgbl;->zza()Lcom/google/android/gms/internal/ads/zzgbl;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzgbs;-><init>(Lcom/google/android/gms/internal/ads/zzgbl;[B)V

    return-object v1
.end method
