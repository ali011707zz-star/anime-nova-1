.class final Lcom/google/android/gms/internal/ads/zzcxe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzl;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcxj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcxj;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxe;->zza:Lcom/google/android/gms/internal/ads/zzcxj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxe;->zza:Lcom/google/android/gms/internal/ads/zzcxj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxj;->zzk()Lcom/google/android/gms/internal/ads/zzdgu;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdgu;->zzm(Z)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbzu;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxe;->zza:Lcom/google/android/gms/internal/ads/zzcxj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcxj;->zzk()Lcom/google/android/gms/internal/ads/zzdgu;

    move-result-object p1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdgu;->zzm(Z)V

    return-void
.end method
