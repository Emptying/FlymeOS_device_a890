.class public Landroid/content/pm/PackageParser$Component;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Component"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<II:",
        "Landroid/content/pm/PackageParser$IntentInfo;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final className:Ljava/lang/String;

.field componentName:Landroid/content/ComponentName;

.field componentShortName:Ljava/lang/String;

.field public final intents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TII;>;"
        }
    .end annotation
.end field

.field public metaData:Landroid/os/Bundle;

.field public final owner:Landroid/content/pm/PackageParser$Package;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$Component;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Component",
            "<TII;>;)V"
        }
    .end annotation

    .prologue
    .line 4723
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    .local p1, "clone":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4724
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    .line 4725
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 4726
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    .line 4727
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    .line 4728
    iget-object v0, p1, Landroid/content/pm/PackageParser$Component;->componentShortName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentShortName:Ljava/lang/String;

    .line 4729
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$Package;)V
    .locals 1
    .param p1, "_owner"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    const/4 v0, 0x0

    .line 4644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4645
    iput-object p1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    .line 4646
    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 4647
    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    .line 4648
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ComponentInfo;)V
    .locals 7
    .param p1, "args"    # Landroid/content/pm/PackageParser$ParseComponentArgs;
    .param p2, "outInfo"    # Landroid/content/pm/ComponentInfo;

    .prologue
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    const/4 v6, 0x0

    .line 4695
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser$Component;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/PackageItemInfo;)V

    .line 4696
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->outError:[Ljava/lang/String;

    aget-object v0, v0, v6

    if-eqz v0, :cond_0

    .line 4721
    :goto_0
    return-void

    .line 4700
    :cond_0
    iget v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->processRes:I

    if-eqz v0, :cond_1

    .line 4702
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_3

    .line 4703
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    iget v1, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->processRes:I

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v2

    .line 4711
    .local v2, "pname":Ljava/lang/CharSequence;
    :goto_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    iget-object v4, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sepProcesses:[Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->outError:[Ljava/lang/String;

    # invokes: Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v0 .. v5}, Landroid/content/pm/PackageParser;->access$200(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    .line 4716
    .end local v2    # "pname":Ljava/lang/CharSequence;
    :cond_1
    iget v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->descriptionRes:I

    if-eqz v0, :cond_2

    .line 4717
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    iget v1, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->descriptionRes:I

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p2, Landroid/content/pm/ComponentInfo;->descriptionRes:I

    .line 4720
    :cond_2
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    iget v1, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->enabledRes:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p2, Landroid/content/pm/ComponentInfo;->enabled:Z

    goto :goto_0

    .line 4709
    :cond_3
    iget-object v0, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    iget v1, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->processRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "pname":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/PackageItemInfo;)V
    .locals 9
    .param p1, "args"    # Landroid/content/pm/PackageParser$ParsePackageItemArgs;
    .param p2, "outInfo"    # Landroid/content/pm/PackageItemInfo;

    .prologue
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 4650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4651
    iget-object v5, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->owner:Landroid/content/pm/PackageParser$Package;

    iput-object v5, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    .line 4652
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/content/pm/PackageParser$Component;->intents:Ljava/util/ArrayList;

    .line 4653
    iget-object v5, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    iget v6, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->nameRes:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 4654
    .local v3, "name":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 4655
    iput-object v7, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    .line 4656
    iget-object v5, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->outError:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not specify android:name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 4692
    :goto_0
    return-void

    .line 4660
    :cond_0
    iget-object v5, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->outError:[Ljava/lang/String;

    # invokes: Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v3, v6}, Landroid/content/pm/PackageParser;->access$100(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 4662
    iget-object v5, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 4663
    iput-object v7, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    .line 4664
    iget-object v5, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->outError:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not have valid android:name"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    goto :goto_0

    .line 4668
    :cond_1
    iget-object v5, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    iput-object v5, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    .line 4670
    iget-object v5, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    iget v6, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->iconRes:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 4671
    .local v1, "iconVal":I
    if-eqz v1, :cond_2

    .line 4672
    iput v1, p2, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 4673
    iput-object v7, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4676
    :cond_2
    iget-object v5, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    iget v6, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->logoRes:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 4677
    .local v2, "logoVal":I
    if-eqz v2, :cond_3

    .line 4678
    iput v2, p2, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 4681
    :cond_3
    iget-object v5, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    iget v6, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->bannerRes:I

    invoke-virtual {v5, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 4682
    .local v0, "bannerVal":I
    if-eqz v0, :cond_4

    .line 4683
    iput v0, p2, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 4686
    :cond_4
    iget-object v5, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    iget v6, p1, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->labelRes:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 4687
    .local v4, "v":Landroid/util/TypedValue;
    if-eqz v4, :cond_5

    iget v5, v4, Landroid/util/TypedValue;->resourceId:I

    iput v5, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v5, :cond_5

    .line 4688
    invoke-virtual {v4}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4691
    :cond_5
    iget-object v5, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v5, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public appendComponentShortName(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 4743
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4744
    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 4732
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 4733
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    .line 4739
    :goto_0
    return-object v0

    .line 4735
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4736
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    .line 4739
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public printComponentShortName(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 4747
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    iget-object v0, p0, Landroid/content/pm/PackageParser$Component;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/content/ComponentName;->printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 4748
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<TII;>;"
    const/4 v0, 0x0

    .line 4751
    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentName:Landroid/content/ComponentName;

    .line 4752
    iput-object v0, p0, Landroid/content/pm/PackageParser$Component;->componentShortName:Ljava/lang/String;

    .line 4753
    return-void
.end method
