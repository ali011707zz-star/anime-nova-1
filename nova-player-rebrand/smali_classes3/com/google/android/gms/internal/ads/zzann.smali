.class public final Lcom/google/android/gms/internal/ads/zzann;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamf;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzer;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzann;->zza:Lcom/google/android/gms/internal/ads/zzer;

    return-void
.end method


# virtual methods
.method public final zza([BIILcom/google/android/gms/internal/ads/zzame;Lcom/google/android/gms/internal/ads/zzdr;)V
    .locals 9

    add-int/2addr p3, p2

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzann;->zza:Lcom/google/android/gms/internal/ads/zzer;

    invoke-virtual {p4, p1, p3}, Lcom/google/android/gms/internal/ads/zzer;->zzb([BI)V

    .line 2
    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzer;->zzh(I)V

    new-instance v1, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :goto_0
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result p1

    if-lez p1, :cond_8

    .line 5
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzer;->zzd()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/16 v0, 0x8

    if-lt p1, v0, :cond_0

    move p1, p3

    goto :goto_1

    :cond_0
    move p1, p2

    :goto_1
    const-string v2, "Incomplete Mp4Webvtt Top Level box header found."

    .line 6
    invoke-static {p1, v2}, Lcom/google/android/gms/internal/ads/zzgrc;->zzb(ZLjava/lang/Object;)V

    .line 7
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result p1

    add-int/lit8 p1, p1, -0x8

    .line 8
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v2

    const v3, 0x76747463

    if-ne v2, v3, :cond_7

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :goto_2
    if-lez p1, :cond_4

    if-lt p1, v0, :cond_1

    move v5, p3

    goto :goto_3

    :cond_1
    move v5, p2

    :goto_3
    const-string v6, "Incomplete vtt cue box header found."

    .line 9
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzgrc;->zzb(ZLjava/lang/Object;)V

    .line 10
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v5

    .line 11
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzer;->zzB()I

    move-result v6

    add-int/lit8 p1, p1, -0x8

    add-int/lit8 v5, v5, -0x8

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzer;->zzi()[B

    move-result-object v7

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzer;->zzg()I

    move-result v8

    .line 12
    invoke-static {v7, v8, v5}, Lcom/google/android/gms/internal/ads/zzfj;->zzj([BII)Ljava/lang/String;

    move-result-object v7

    .line 13
    invoke-virtual {p4, v5}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    const v8, 0x73747467

    if-ne v6, v8, :cond_2

    .line 14
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzanw;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcw;

    move-result-object v4

    goto :goto_4

    :cond_2
    const v8, 0x7061796c

    if-ne v6, v8, :cond_3

    .line 15
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 16
    invoke-static {v2, v3, v6}, Lcom/google/android/gms/internal/ads/zzanw;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/text/SpannedString;

    move-result-object v3

    :cond_3
    :goto_4
    sub-int/2addr p1, v5

    goto :goto_2

    :cond_4
    if-nez v3, :cond_5

    const-string v3, ""

    :cond_5
    if-eqz v4, :cond_6

    .line 17
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzcw;->zza(Ljava/lang/CharSequence;)Lcom/google/android/gms/internal/ads/zzcw;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcw;->zzr()Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object p1

    goto :goto_5

    .line 18
    :cond_6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzanw;->zza:Ljava/util/regex/Pattern;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzanv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzanv;-><init>()V

    iput-object v3, p1, Lcom/google/android/gms/internal/ads/zzanv;->zzc:Ljava/lang/CharSequence;

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzanv;->zza()Lcom/google/android/gms/internal/ads/zzcw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcw;->zzr()Lcom/google/android/gms/internal/ads/zzcx;

    move-result-object p1

    .line 20
    :goto_5
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 21
    :cond_7
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/zzer;->zzk(I)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzalx;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v4, v2

    .line 22
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzalx;-><init>(Ljava/util/List;JJ)V

    invoke-interface {p5, v0}, Lcom/google/android/gms/internal/ads/zzdr;->zza(Ljava/lang/Object;)V

    return-void
.end method
