.class public final Lcom/google/android/gms/internal/ads/zzhjo;
.super Lcom/google/android/gms/internal/ads/zzhaz;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhlb;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhlb;Lcom/google/android/gms/internal/ads/zzhbt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhaz;-><init>()V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzhjo;->zze(Lcom/google/android/gms/internal/ads/zzhlb;Lcom/google/android/gms/internal/ads/zzhbt;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhjo;->zza:Lcom/google/android/gms/internal/ads/zzhlb;

    return-void
.end method

.method private static zze(Lcom/google/android/gms/internal/ads/zzhlb;Lcom/google/android/gms/internal/ads/zzhbt;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhjm;->zzb:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzc()Lcom/google/android/gms/internal/ads/zzhqb;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, p1, p0

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzhbp;
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjo;->zza:Lcom/google/android/gms/internal/ads/zzhlb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhjn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzd()Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzhjn;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhqy;[B)V

    return-object v1
.end method

.method public final zzb()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjo;->zza:Lcom/google/android/gms/internal/ads/zzhlb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhlb;->zze()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzhbt;)Lcom/google/android/gms/internal/ads/zzhlb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjo;->zza:Lcom/google/android/gms/internal/ads/zzhlb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhjo;->zze(Lcom/google/android/gms/internal/ads/zzhlb;Lcom/google/android/gms/internal/ads/zzhbt;)V

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzhye;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjo;->zza:Lcom/google/android/gms/internal/ads/zzhlb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzd()Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhqy;->zzd:Lcom/google/android/gms/internal/ads/zzhqy;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhye;->zza([B)Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzd()Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhqy;->zzb:Lcom/google/android/gms/internal/ads/zzhqy;

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhlb;->zze()Ljava/lang/Integer;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkh;->zzb(I)Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzd()Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhqy;->zzc:Lcom/google/android/gms/internal/ads/zzhqy;

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhlb;->zzd()Lcom/google/android/gms/internal/ads/zzhqy;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhqy;->zze:Lcom/google/android/gms/internal/ads/zzhqy;

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Unknown output prefix type"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhlb;->zze()Ljava/lang/Integer;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkh;->zza(I)Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v0

    return-object v0
.end method
