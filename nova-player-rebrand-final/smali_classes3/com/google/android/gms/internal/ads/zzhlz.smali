.class public final Lcom/google/android/gms/internal/ads/zzhlz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhla;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhlz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhlz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhlz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhlz;->zza:Lcom/google/android/gms/internal/ads/zzhlz;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zzc()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkd;->zza()Lcom/google/android/gms/internal/ads/zzhkd;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhlz;->zza:Lcom/google/android/gms/internal/ads/zzhlz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhkd;->zzc(Lcom/google/android/gms/internal/ads/zzhla;)V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Class;
    .locals 1

    .line 0
    const-class v0, Lcom/google/android/gms/internal/ads/zzhlx;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Class;
    .locals 1

    .line 0
    const-class v0, Lcom/google/android/gms/internal/ads/zzhlx;

    return-object v0
.end method

.method public final bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzhjj;Lcom/google/android/gms/internal/ads/zzhjr;Lcom/google/android/gms/internal/ads/zzhkz;)Ljava/lang/Object;
    .locals 5

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzhbk;

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhbk;->zzc()Lcom/google/android/gms/internal/ads/zzhbi;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhkp;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhkp;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhjj;->zzd()I

    move-result v2

    if-ge v1, v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhbk;

    .line 4
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzhbk;->zze(I)Lcom/google/android/gms/internal/ads/zzhbi;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhbi;->zzb()Lcom/google/android/gms/internal/ads/zzhbb;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhbb;->zza:Lcom/google/android/gms/internal/ads/zzhbb;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-interface {p3, v2}, Lcom/google/android/gms/internal/ads/zzhkz;->zza(Lcom/google/android/gms/internal/ads/zzhbi;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhlx;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhbi;->zza()Lcom/google/android/gms/internal/ads/zzhaz;

    move-result-object v2

    instance-of v4, v2, Lcom/google/android/gms/internal/ads/zzhmm;

    if-eqz v4, :cond_0

    .line 8
    check-cast v2, Lcom/google/android/gms/internal/ads/zzhmm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhmm;->zze()Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v2

    goto :goto_1

    .line 7
    :cond_0
    instance-of v4, v2, Lcom/google/android/gms/internal/ads/zzhjo;

    if-eqz v4, :cond_1

    .line 9
    check-cast v2, Lcom/google/android/gms/internal/ads/zzhjo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhjo;->zzd()Lcom/google/android/gms/internal/ads/zzhye;

    move-result-object v2

    .line 7
    :goto_1
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzhkp;->zza(Lcom/google/android/gms/internal/ads/zzhye;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhkp;

    goto :goto_2

    .line 9
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 10
    new-instance p2, Ljava/security/GeneralSecurityException;

    .line 11
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhaz;->zza()Lcom/google/android/gms/internal/ads/zzhbp;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Cannot get output prefix for key of class "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with parameters "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_3
    invoke-interface {p3, p2}, Lcom/google/android/gms/internal/ads/zzhkz;->zza(Lcom/google/android/gms/internal/ads/zzhbi;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhlx;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzhly;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhkp;->zzb()Lcom/google/android/gms/internal/ads/zzhkr;

    move-result-object p3

    const/4 v0, 0x0

    invoke-direct {p2, p3, p1, v0}, Lcom/google/android/gms/internal/ads/zzhly;-><init>(Lcom/google/android/gms/internal/ads/zzhkr;Lcom/google/android/gms/internal/ads/zzhlx;[B)V

    return-object p2
.end method
