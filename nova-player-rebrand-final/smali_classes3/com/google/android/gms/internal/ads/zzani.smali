.class final Lcom/google/android/gms/internal/ads/zzani;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:I

.field private zzc:Z

.field private zzd:I

.field private zze:Z

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:F

.field private zzl:Ljava/lang/String;

.field private zzm:I

.field private zzn:I

.field private zzo:Landroid/text/Layout$Alignment;

.field private zzp:Landroid/text/Layout$Alignment;

.field private zzq:I

.field private zzr:Lcom/google/android/gms/internal/ads/zzanb;

.field private zzs:F

.field private zzt:Ljava/lang/String;

.field private zzu:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzf:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzg:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzh:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzi:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzj:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzm:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzn:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzq:I

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzs:F

    return-void
.end method


# virtual methods
.method public final zzA()Landroid/text/Layout$Alignment;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzp:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public final zzB(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzani;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzp:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public final zzC()Z
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzq:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzD(Z)Lcom/google/android/gms/internal/ads/zzani;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzq:I

    return-object p0
.end method

.method public final zzE()Lcom/google/android/gms/internal/ads/zzanb;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzr:Lcom/google/android/gms/internal/ads/zzanb;

    return-object v0
.end method

.method public final zzF(Lcom/google/android/gms/internal/ads/zzanb;)Lcom/google/android/gms/internal/ads/zzani;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzr:Lcom/google/android/gms/internal/ads/zzanb;

    return-object p0
.end method

.method public final zzG(F)Lcom/google/android/gms/internal/ads/zzani;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzk:F

    return-object p0
.end method

.method public final zzH(I)Lcom/google/android/gms/internal/ads/zzani;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzj:I

    return-object p0
.end method

.method public final zzI()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzj:I

    return v0
.end method

.method public final zzJ()F
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzk:F

    return v0
.end method

.method public final zzK(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzani;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzt:Ljava/lang/String;

    return-object p0
.end method

.method public final zzL()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzt:Ljava/lang/String;

    return-object v0
.end method

.method public final zzM(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzani;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzu:Ljava/lang/String;

    return-object p0
.end method

.method public final zzN()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzu:Ljava/lang/String;

    return-object v0
.end method

.method public final zza()I
    .locals 4

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzh:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzani;->zzi:I

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzani;->zzi:I

    if-ne v3, v2, :cond_3

    const/4 v1, 0x2

    :cond_3
    or-int/2addr v0, v1

    return v0
.end method

.method public final zzb()Z
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzf:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc(Z)Lcom/google/android/gms/internal/ads/zzani;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzf:I

    return-object p0
.end method

.method public final zzd()Z
    .locals 2

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzg:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zze(Z)Lcom/google/android/gms/internal/ads/zzani;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzg:I

    return-object p0
.end method

.method public final zzf(Z)Lcom/google/android/gms/internal/ads/zzani;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzh:I

    return-object p0
.end method

.method public final zzg(Z)Lcom/google/android/gms/internal/ads/zzani;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzi:I

    return-object p0
.end method

.method public final zzh()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzi(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzani;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zzj()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzc:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzb:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font color has not been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzk(I)Lcom/google/android/gms/internal/ads/zzani;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzb:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzc:Z

    return-object p0
.end method

.method public final zzl()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzc:Z

    return v0
.end method

.method public final zzm()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zze:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzd:I

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background color has not been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzn(I)Lcom/google/android/gms/internal/ads/zzani;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzd:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zze:Z

    return-object p0
.end method

.method public final zzo()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zze:Z

    return v0
.end method

.method public final zzp(F)Lcom/google/android/gms/internal/ads/zzani;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzs:F

    return-object p0
.end method

.method public final zzq()F
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzs:F

    return v0
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzani;)Lcom/google/android/gms/internal/ads/zzani;
    .locals 3

    if-eqz p1, :cond_10

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzc:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzani;->zzc:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzani;->zzb:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzani;->zzk(I)Lcom/google/android/gms/internal/ads/zzani;

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzh:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzani;->zzh:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzh:I

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzi:I

    if-ne v0, v1, :cond_2

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzani;->zzi:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzi:I

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zza:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzani;->zza:Ljava/lang/String;

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zza:Ljava/lang/String;

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzf:I

    if-ne v0, v1, :cond_4

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzani;->zzf:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzf:I

    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzg:I

    if-ne v0, v1, :cond_5

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzani;->zzg:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzg:I

    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzn:I

    if-ne v0, v1, :cond_6

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzani;->zzn:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzn:I

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzo:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_7

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzani;->zzo:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_7

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzo:Landroid/text/Layout$Alignment;

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzp:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_8

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzani;->zzp:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_8

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzp:Landroid/text/Layout$Alignment;

    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzq:I

    if-ne v0, v1, :cond_9

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzani;->zzq:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzq:I

    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzj:I

    if-ne v0, v1, :cond_a

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzani;->zzj:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzj:I

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzani;->zzk:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzk:F

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzr:Lcom/google/android/gms/internal/ads/zzanb;

    if-nez v0, :cond_b

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzani;->zzr:Lcom/google/android/gms/internal/ads/zzanb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzr:Lcom/google/android/gms/internal/ads/zzanb;

    :cond_b
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzs:F

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v2

    if-nez v0, :cond_c

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzani;->zzs:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzs:F

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzt:Ljava/lang/String;

    if-nez v0, :cond_d

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzani;->zzt:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzt:Ljava/lang/String;

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzu:Ljava/lang/String;

    if-nez v0, :cond_e

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzani;->zzu:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzu:Ljava/lang/String;

    :cond_e
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zze:Z

    if-nez v0, :cond_f

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzani;->zze:Z

    if-eqz v0, :cond_f

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzani;->zzd:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzani;->zzn(I)Lcom/google/android/gms/internal/ads/zzani;

    :cond_f
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzm:I

    if-ne v0, v1, :cond_10

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzani;->zzm:I

    if-eq p1, v1, :cond_10

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzm:I

    :cond_10
    return-object p0
.end method

.method public final zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzani;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzl:Ljava/lang/String;

    return-object p0
.end method

.method public final zzt()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzl:Ljava/lang/String;

    return-object v0
.end method

.method public final zzu(I)Lcom/google/android/gms/internal/ads/zzani;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzm:I

    return-object p0
.end method

.method public final zzv()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzm:I

    return v0
.end method

.method public final zzw(I)Lcom/google/android/gms/internal/ads/zzani;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzn:I

    return-object p0
.end method

.method public final zzx()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzn:I

    return v0
.end method

.method public final zzy()Landroid/text/Layout$Alignment;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzani;->zzo:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public final zzz(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzani;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzani;->zzo:Landroid/text/Layout$Alignment;

    return-object p0
.end method
