.class final Lcom/google/android/gms/internal/ads/zzcsa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgzl;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzcsh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcsh;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsa;->zza:Lcom/google/android/gms/internal/ads/zzcsh;

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
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsa;->zza:Lcom/google/android/gms/internal/ads/zzcsh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcsh;->zzt()Lcom/google/android/gms/internal/ads/zzfqg;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcsh;->zzr()Lcom/google/android/gms/internal/ads/zzfjc;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcsh;->zzs()Lcom/google/android/gms/internal/ads/zzfir;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcsh;->zzs()Lcom/google/android/gms/internal/ads/zzfir;

    move-result-object v4

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzfir;->zzc:Ljava/util/List;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 2
    const-string v5, ""

    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzfqg;->zzb(Lcom/google/android/gms/internal/ads/zzfjc;Lcom/google/android/gms/internal/ads/zzfir;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzczz;Lcom/google/android/gms/internal/ads/zzcdv;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzcdu;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcsh;->zzq()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcdu;->zzs(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcsh;->zzu()Lcom/google/android/gms/internal/ads/zzfjx;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzfjx;->zzb(Ljava/util/List;I)V

    return-void
.end method
