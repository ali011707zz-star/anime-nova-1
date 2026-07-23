.class public final Lcom/google/android/gms/internal/ads/zzib;
.super Lcom/google/android/gms/internal/ads/zzgt;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:[B

.field private final zzb:Ljava/net/DatagramPacket;

.field private zzc:Landroid/net/Uri;

.field private zzd:Ljava/net/DatagramSocket;

.field private zze:Ljava/net/MulticastSocket;

.field private zzf:Ljava/net/InetAddress;

.field private zzg:Z

.field private zzh:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 p1, 0x1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgt;-><init>(Z)V

    const/16 p1, 0x7d0

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zza:[B

    .line 2
    new-instance v1, Ljava/net/DatagramPacket;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Ljava/net/DatagramPacket;-><init>([BII)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzb:Ljava/net/DatagramPacket;

    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .locals 2

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzh:I

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzd:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzb:Ljava/net/DatagramPacket;

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-virtual {v1}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzh:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgt;->zzh(I)V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 7
    :try_start_1
    throw p1
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 9
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzia;

    const/16 p3, 0x7d1

    .line 8
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzia;-><init>(Ljava/lang/Throwable;I)V

    throw p2

    .line 7
    :goto_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzia;

    const/16 p3, 0x7d2

    .line 9
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzia;-><init>(Ljava/lang/Throwable;I)V

    throw p2

    .line 8
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzb:Ljava/net/DatagramPacket;

    .line 4
    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzh:I

    sub-int/2addr v0, v1

    .line 5
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zza:[B

    .line 6
    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzh:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzh:I

    return p3
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzhf;)J
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhf;->zza:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzc:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzc:Landroid/net/Uri;

    .line 3
    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgt;->zzf(Lcom/google/android/gms/internal/ads/zzhf;)V

    .line 5
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzf:Ljava/net/InetAddress;

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzib;->zzf:Ljava/net/InetAddress;

    .line 6
    invoke-direct {v0, v2, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzf:Ljava/net/InetAddress;

    .line 7
    invoke-virtual {v1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    new-instance v1, Ljava/net/MulticastSocket;

    invoke-direct {v1, v0}, Ljava/net/MulticastSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zze:Ljava/net/MulticastSocket;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzf:Ljava/net/InetAddress;

    .line 9
    invoke-virtual {v1, v0}, Ljava/net/MulticastSocket;->joinGroup(Ljava/net/InetAddress;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zze:Ljava/net/MulticastSocket;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzd:Ljava/net/DatagramSocket;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    .line 10
    :cond_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1, v0}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzd:Ljava/net/DatagramSocket;

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzd:Ljava/net/DatagramSocket;

    const/16 v1, 0x1f40

    .line 11
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzg:Z

    .line 14
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgt;->zzg(Lcom/google/android/gms/internal/ads/zzhf;)V

    const-wide/16 v0, -0x1

    return-wide v0

    :goto_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzia;

    const/16 v1, 0x7d1

    .line 12
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzia;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    .line 15
    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzia;

    const/16 v1, 0x7d6

    .line 13
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzia;-><init>(Ljava/lang/Throwable;I)V

    throw v0
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzc:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzd()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzc:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zze:Ljava/net/MulticastSocket;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzib;->zzf:Ljava/net/InetAddress;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/net/MulticastSocket;->leaveGroup(Ljava/net/InetAddress;)V

    goto :goto_0

    .line 2
    :cond_0
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :catch_0
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zze:Ljava/net/MulticastSocket;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzd:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzd:Ljava/net/DatagramSocket;

    :cond_2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzf:Ljava/net/InetAddress;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzh:I

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzib;->zzg:Z

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzib;->zzg:Z

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzi()V

    :cond_3
    return-void
.end method
