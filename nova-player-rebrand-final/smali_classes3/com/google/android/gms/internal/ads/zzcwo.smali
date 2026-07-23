.class final Lcom/google/android/gms/internal/ads/zzcwo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzl;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgzl;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcwu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcwu;Lcom/google/android/gms/internal/ads/zzgzl;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwo;->zza:Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwo;->zzb:Lcom/google/android/gms/internal/ads/zzcwu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwo;->zza:Lcom/google/android/gms/internal/ads/zzgzl;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgzl;->zza(Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwo;->zzb:Lcom/google/android/gms/internal/ads/zzcwu;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwu;->zzf()V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcwn;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcwn;->zza:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwo;->zza:Lcom/google/android/gms/internal/ads/zzgzl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcwo;->zzb:Lcom/google/android/gms/internal/ads/zzcwu;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzcwu;->zze(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgzl;)V

    return-void
.end method
