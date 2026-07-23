.class public final Lcom/google/android/gms/internal/ads/zzhf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final zza:Landroid/net/Uri;

.field public final zzb:I

.field public final zzc:[B

.field public final zzd:Ljava/util/Map;

.field public final zze:J

.field public final zzf:J

.field public final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "media3.datasource"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzal;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p2, 0x0

    cmp-long p4, p7, p2

    const/4 p5, 0x0

    const/4 p11, 0x1

    if-ltz p4, :cond_0

    move p4, p11

    goto :goto_0

    :cond_0
    move p4, p5

    :goto_0
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    .line 2
    invoke-static {p4}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    cmp-long p2, p9, p2

    if-gtz p2, :cond_1

    const-wide/16 p2, -0x1

    cmp-long p4, p9, p2

    if-nez p4, :cond_2

    move-wide p9, p2

    :cond_1
    move p5, p11

    .line 3
    :cond_2
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzgrc;->zza(Z)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhf;->zza:Landroid/net/Uri;

    iput p11, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzb:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzc:[B

    new-instance p1, Ljava/util/HashMap;

    .line 5
    invoke-direct {p1, p6}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzd:Ljava/util/Map;

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/zzhf;->zze:J

    iput-wide p9, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzf:J

    iput p12, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzg:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;[B)V
    .locals 0

    .line 0
    move p13, p12

    const/4 p12, 0x0

    const/4 p14, 0x0

    const-wide/16 p3, 0x0

    const/4 p5, 0x1

    move-wide p10, p9

    move-wide p8, p7

    move-object p7, p6

    const/4 p6, 0x0

    move-object p2, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p14}, Lcom/google/android/gms/internal/ads/zzhf;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;JJLjava/lang/String;)V
    .locals 14

    .line 1
    sget-object v6, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v7, p2

    move-wide/from16 v9, p4

    .line 2
    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/internal/ads/zzhf;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zza:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhf;->zze:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzf:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzg:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0xf

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v9

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v10, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "DataSpec["

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GET"

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", null, "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(I)Z
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhf;->zzg:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzhe;
    .locals 2

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzhe;-><init>(Lcom/google/android/gms/internal/ads/zzhf;[B)V

    return-object v0
.end method
