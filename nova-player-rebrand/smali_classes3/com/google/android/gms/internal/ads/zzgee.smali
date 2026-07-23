.class final Lcom/google/android/gms/internal/ads/zzgee;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzl;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgeg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgeg;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgee;->zza:Lcom/google/android/gms/internal/ads/zzgeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgee;->zza:Lcom/google/android/gms/internal/ads/zzgeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgeg;->zzg()Lcom/google/android/gms/internal/ads/zzgdw;

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgdv;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgdw;->zzc(Lcom/google/android/gms/internal/ads/zzgdv;)V

    return-void
.end method
