.class public final Lcom/google/android/gms/internal/ads/zzcw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Ljava/lang/CharSequence;

.field private zzb:Landroid/graphics/Bitmap;

.field private zzc:Landroid/text/Layout$Alignment;

.field private zzd:Landroid/text/Layout$Alignment;

.field private zze:F

.field private zzf:I

.field private zzg:I

.field private zzh:F

.field private zzi:I

.field private zzj:I

.field private zzk:F

.field private zzl:F

.field private zzm:F

.field private zzn:I

.field private zzo:F

.field private zzp:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcw;->zza:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzb:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzc:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzd:Landroid/text/Layout$Alignment;

    const v0, -0x800001

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcw;->zze:F

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzf:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzg:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzh:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzi:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzj:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzk:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzl:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzm:F

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzn:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcx;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzcx;->zza:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcw;->zza:Ljava/lang/CharSequence;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzcx;->zzd:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzb:Landroid/graphics/Bitmap;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzcx;->zzb:Landroid/text/Layout$Alignment;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzc:Landroid/text/Layout$Alignment;

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzcx;->zzc:Landroid/text/Layout$Alignment;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzd:Landroid/text/Layout$Alignment;

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzcx;->zze:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcw;->zze:F

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzcx;->zzf:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzf:I

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzcx;->zzg:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzg:I

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzcx;->zzh:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzh:F

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzcx;->zzi:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzi:I

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzcx;->zzl:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzj:I

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzcx;->zzm:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzk:F

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzcx;->zzj:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzl:F

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzcx;->zzk:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzm:F

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzcx;->zzn:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzn:I

    iget p2, p1, Lcom/google/android/gms/internal/ads/zzcx;->zzo:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzo:F

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzcx;->zzp:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzp:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzcw;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcw;->zza:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzb:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final zzb()Ljava/lang/CharSequence;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcw;->zza:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final zzc(Landroid/graphics/Bitmap;)Lcom/google/android/gms/internal/ads/zzcw;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzb:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcw;->zza:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final zzd(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzcw;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzc:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public final zze(Landroid/text/Layout$Alignment;)Lcom/google/android/gms/internal/ads/zzcw;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzd:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public final zzf(FI)Lcom/google/android/gms/internal/ads/zzcw;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcw;->zze:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzf:I

    return-object p0
.end method

.method public final zzg(I)Lcom/google/android/gms/internal/ads/zzcw;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzg:I

    return-object p0
.end method

.method public final zzh()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzg:I

    return v0
.end method

.method public final zzi(F)Lcom/google/android/gms/internal/ads/zzcw;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzh:F

    return-object p0
.end method

.method public final zzj(I)Lcom/google/android/gms/internal/ads/zzcw;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzi:I

    return-object p0
.end method

.method public final zzk()I
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzi:I

    return v0
.end method

.method public final zzl(FI)Lcom/google/android/gms/internal/ads/zzcw;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzk:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzj:I

    return-object p0
.end method

.method public final zzm(F)Lcom/google/android/gms/internal/ads/zzcw;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzl:F

    return-object p0
.end method

.method public final zzn(F)Lcom/google/android/gms/internal/ads/zzcw;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzm:F

    return-object p0
.end method

.method public final zzo(I)Lcom/google/android/gms/internal/ads/zzcw;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzn:I

    return-object p0
.end method

.method public final zzp(F)Lcom/google/android/gms/internal/ads/zzcw;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzo:F

    return-object p0
.end method

.method public final zzq(I)Lcom/google/android/gms/internal/ads/zzcw;
    .locals 0

    .line 0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcw;->zzp:I

    return-object p0
.end method

.method public final zzr()Lcom/google/android/gms/internal/ads/zzcx;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcx;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcw;->zza:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcw;->zzc:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzcw;->zzd:Landroid/text/Layout$Alignment;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzcw;->zzb:Landroid/graphics/Bitmap;

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzcw;->zze:F

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzcw;->zzf:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzcw;->zzg:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzcw;->zzh:F

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzcw;->zzi:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzcw;->zzj:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzcw;->zzk:F

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzcw;->zzl:F

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzcw;->zzm:F

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzcw;->zzn:I

    move-object/from16 v16, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzcw;->zzo:F

    move/from16 v18, v1

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzcw;->zzp:I

    const/16 v20, 0x0

    move/from16 v17, v15

    const/4 v15, 0x0

    move/from16 v19, v1

    move-object/from16 v1, v16

    const/high16 v16, -0x1000000

    invoke-direct/range {v1 .. v20}, Lcom/google/android/gms/internal/ads/zzcx;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFI[B)V

    return-object v1
.end method
