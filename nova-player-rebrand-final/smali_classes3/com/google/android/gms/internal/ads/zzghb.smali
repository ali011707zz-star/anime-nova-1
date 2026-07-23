.class public abstract Lcom/google/android/gms/internal/ads/zzghb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgha;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgfx;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzawg;

.field private final zze:Lcom/google/android/gms/internal/ads/zzgoc;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzawg;Lcom/google/android/gms/internal/ads/zzgfx;Lcom/google/android/gms/internal/ads/zzgoc;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzghb;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzghb;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzghb;->zzd:Lcom/google/android/gms/internal/ads/zzawg;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzghb;->zzc:Lcom/google/android/gms/internal/ads/zzgfx;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzghb;->zze:Lcom/google/android/gms/internal/ads/zzgoc;

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghb;->zze:Lcom/google/android/gms/internal/ads/zzgoc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgoc;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghb;->zzc:Lcom/google/android/gms/internal/ads/zzgfx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzghb;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzghb;->zzb:Ljava/lang/String;

    .line 2
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgfx;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzghb;->zzd:Lcom/google/android/gms/internal/ads/zzawg;

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzghb;->zza(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/ads/zzawg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzghb;->zze:Lcom/google/android/gms/internal/ads/zzgoc;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgoc;->zzc()V

    const/4 v0, 0x0

    return-object v0

    .line 7
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzghb;->zze:Lcom/google/android/gms/internal/ads/zzgoc;

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgoc;->zzb(Ljava/lang/Throwable;)V

    .line 5
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzghb;->zze:Lcom/google/android/gms/internal/ads/zzgoc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgoc;->zzc()V

    .line 7
    throw v0
.end method

.method protected abstract zza(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/ads/zzawg;)V
.end method
