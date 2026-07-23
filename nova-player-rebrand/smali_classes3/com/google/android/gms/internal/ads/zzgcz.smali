.class public final Lcom/google/android/gms/internal/ads/zzgcz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgda;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzidc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzidc;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgcz;->zza:Lcom/google/android/gms/internal/ads/zzidc;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzidc;

    .line 2
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzidc;->zzaO(Ljava/io/OutputStream;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcz;->zza:Lcom/google/android/gms/internal/ads/zzidc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzidc;->zzbd()Lcom/google/android/gms/internal/ads/zzidk;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzibb;->zza()Lcom/google/android/gms/internal/ads/zzibb;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzidk;->zza(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzibb;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzidc;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzicg; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgcw;

    const-string v1, "Cannot read proto."

    .line 3
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgcw;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final synthetic zzc()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgcz;->zza:Lcom/google/android/gms/internal/ads/zzidc;

    return-object v0
.end method
