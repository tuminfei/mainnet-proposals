// Script hash will be generated
script {
    use aptos_framework::poc_registry;
    use aptos_framework::topo_governance;

    fun main(core_resources: &signer) {
        // Get aptos_framework signer from topo_governance
        let aptos_framework = topo_governance::get_signer_testnet_only(core_resources, @0x1);
        poc_registry::initialize_registry(&aptos_framework);
    }
}
