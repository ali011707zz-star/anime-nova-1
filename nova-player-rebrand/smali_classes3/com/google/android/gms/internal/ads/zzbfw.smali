.class final synthetic Lcom/google/android/gms/internal/ads/zzbfw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzbfx;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbfo;

.field private final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbfp;

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzcen;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbfx;Lcom/google/android/gms/internal/ads/zzbfo;Lcom/google/android/gms/internal/ads/zzbfp;Lcom/google/android/gms/internal/ads/zzcen;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zza:Lcom/google/android/gms/internal/ads/zzbfx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzb:Lcom/google/android/gms/internal/ads/zzbfo;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzc:Lcom/google/android/gms/internal/ads/zzbfp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzd:Lcom/google/android/gms/internal/ads/zzcen;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 9

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzd:Lcom/google/android/gms/internal/ads/zzcen;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzb:Lcom/google/android/gms/internal/ads/zzbfo;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zza:Lcom/google/android/gms/internal/ads/zzbfx;

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfo;->zzq()Lcom/google/android/gms/internal/ads/zzbfr;

    move-result-object v3

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfo;->zzp()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbfw;->zzc:Lcom/google/android/gms/internal/ads/zzbfp;

    if-eqz v0, :cond_0

    .line 3
    :try_start_1
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbfr;->zzf(Lcom/google/android/gms/internal/ads/zzbfp;)Lcom/google/android/gms/internal/ads/zzbfm;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzbfr;->zze(Lcom/google/android/gms/internal/ads/zzbfp;)Lcom/google/android/gms/internal/ads/zzbfm;

    move-result-object v0

    .line 5
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfm;->zza()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "No entry contents."

    .line 6
    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcen;->zzd(Ljava/lang/Throwable;)Z

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzbfx;->zzc:Lcom/google/android/gms/internal/ads/zzbfz;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfz;->zzb()V

    return-void

    .line 8
    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbfu;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfm;->zzb()Ljava/io/InputStream;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzbfu;-><init>(Lcom/google/android/gms/internal/ads/zzbfx;Ljava/io/InputStream;I)V

    .line 10
    invoke-virtual {v3}, Ljava/io/PushbackInputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 12
    invoke-virtual {v3, v4}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfm;->zzd()Z

    move-result v4

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfm;->zzg()Z

    move-result v5

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfm;->zzf()J

    move-result-wide v6

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfm;->zze()Z

    move-result v8

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzbgb;->zza(Ljava/io/InputStream;ZZJZ)Lcom/google/android/gms/internal/ads/zzbgb;

    move-result-object v0

    .line 17
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcen;->zzc(Ljava/lang/Object;)Z

    return-void

    .line 10
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Unable to read from cache."

    .line 11
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    :goto_1
    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->$r8$clinit:I

    const-string v3, "Unable to obtain a cache service instance."

    .line 19
    invoke-static {v3, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzcen;->zzd(Ljava/lang/Throwable;)Z

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzbfx;->zzc:Lcom/google/android/gms/internal/ads/zzbfz;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbfz;->zzb()V

    return-void
.end method
