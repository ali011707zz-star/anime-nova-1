.class final Lcom/google/android/gms/internal/ads/zzgoo;
.super Lcom/google/android/gms/internal/ads/zzgpp;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Landroid/os/IBinder;

.field private zzb:Ljava/lang/String;

.field private zzc:I

.field private zzd:F

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgpp;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzgpp;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zza:Landroid/os/IBinder;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null windowToken"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgpp;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzgpp;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzc:I

    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzg:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzg:B

    return-object p0
.end method

.method public final zzd(F)Lcom/google/android/gms/internal/ads/zzgpp;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzd:F

    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzg:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzg:B

    return-object p0
.end method

.method public final zze(I)Lcom/google/android/gms/internal/ads/zzgpp;
    .locals 0

    .line 0
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzg:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzg:B

    return-object p0
.end method

.method public final zzf(I)Lcom/google/android/gms/internal/ads/zzgpp;
    .locals 0

    .line 0
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzg:B

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzg:B

    return-object p0
.end method

.method public final zzg(I)Lcom/google/android/gms/internal/ads/zzgpp;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zze:I

    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzg:B

    or-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    iput-byte p1, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzg:B

    return-object p0
.end method

.method public final zzh(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgpp;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zzgpq;
    .locals 15

    .line 1
    iget-byte v0, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzg:B

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zza:Landroid/os/IBinder;

    if-nez v3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgop;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzb:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzc:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzd:F

    iget v10, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zze:I

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzf:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/zzgop;-><init>(Landroid/os/IBinder;Ljava/lang/String;IFIILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v2

    .line 1
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zza:Landroid/os/IBinder;

    if-nez v1, :cond_2

    const-string v1, " windowToken"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzg:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_3

    const-string v1, " layoutGravity"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzg:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    const-string v1, " layoutVerticalMargin"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzg:B

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_5

    const-string v1, " displayMode"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzg:B

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_6

    const-string v1, " triggerMode"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-byte v1, p0, Lcom/google/android/gms/internal/ads/zzgoo;->zzg:B

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_7

    const-string v1, " windowWidthPx"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
